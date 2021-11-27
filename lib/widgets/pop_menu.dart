import 'package:flutter/material.dart';

class PopMenu extends StatefulWidget {
  @override
  _PopMenuState createState() => _PopMenuState();
}

class _PopMenuState extends State<PopMenu> {
  final List<String> textList = [
    'Today',
    'Yesterday',
    'Friday',
    'Monday',
    'Today'
  ];

  String _currentItemSelected;

  @override
  void initState() {
    super.initState();
    _currentItemSelected = textList[0];
  }

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.only(left: 25),
      child: PopupMenuButton<String>(
        // iconSize: 25,
        itemBuilder: (context) {
          return textList.map((str) {
            return PopupMenuItem(
              value: str,
              child: Text(str),
            );
          }).toList();
        },
        child: Row(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(_currentItemSelected),
            Icon(Icons.arrow_drop_down),
          ],
        ),
        onSelected: (v) {
          setState(() {
            print('!!!===== $v');
            _currentItemSelected = v;
          });
        },
      ),
    );
  }
}
