import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taask/widgets/custom_text_form_field.dart';

import 'components/details.dart';
import 'components/tab_bar.dart';

class NotificationsCenter extends StatefulWidget {
  @override
  _NotificationsCenterState createState() => _NotificationsCenterState();
}

class _NotificationsCenterState extends State<NotificationsCenter> {
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
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 35,
                    child: defaultFormField(
                      prefix: Icons.search,
                      label: 'Search',
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                CustomTabBar(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
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
                      mainAxisSize: MainAxisSize.min,
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
                ),
                SizedBox(
                  height: 20,
                ),
                NotificationsDetails()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
