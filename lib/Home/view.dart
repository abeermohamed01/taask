import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taask/Home/mobile/mobile.dart';
import 'package:taask/widgets/responsive.dart';
import 'package:taask/Home/tablet/tablet_layout.dart';
import 'package:taask/Home/desktop/desktop.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        desktop: DeskTopLayout(),
        tablet: TabletLayout(),
           mobile: MobileLayout(),
      ),
    );
  }
}
