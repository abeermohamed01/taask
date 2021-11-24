import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:taask/providers/tab_provider.dart';
import 'package:taask/providers/transaction_provider.dart';
import 'Home/view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TabProvider(),),
        ChangeNotifierProvider(create: (context) => TransactionProvider(),),
      ],
      child: MaterialApp(
        builder:  (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget),
          breakpoints: const[
            ResponsiveBreakpoint.resize(350,name: MOBILE),
            ResponsiveBreakpoint.autoScale(600,name: TABLET),
            ResponsiveBreakpoint.resize(800,name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700,name: 'XL'),
          ]
        ),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeView(),
      ),
    );
  }
}

