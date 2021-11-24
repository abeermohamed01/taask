import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taask/widgets/desktop_layout.dart';
import 'package:taask/widgets/responsive.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        desktop: DeskTopLayout(),
      ),
    );
  }
}
