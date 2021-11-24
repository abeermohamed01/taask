import 'package:flutter/material.dart';
import 'package:taask/Home/components/drawar.dart';
import 'package:taask/Home/components/table.dart';

class DeskTopLayout extends StatefulWidget {
  @override
  _DeskTopLayoutState createState() => _DeskTopLayoutState();
}

class _DeskTopLayoutState extends State<DeskTopLayout> {
  @override
  Widget build(BuildContext context) {
    return Row( children: [
      MyDrawer(),
      SizedBox(width: 20,),
      MyTable(),
    ]);
  }
}
