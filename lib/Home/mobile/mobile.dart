import 'package:flutter/material.dart';
import 'package:taask/Home/Notification_center/components/details.dart';
import 'package:taask/Home/Notification_center/components/tab_bar.dart';
import 'package:taask/Home/mobile/table_view.dart';
import 'package:taask/widgets/custom_text_form_field.dart';

import '../../widgets/drawar.dart';

class MobileLayout extends StatefulWidget {

  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {

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
  int i = 0;
  int select = 3;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawers(),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Panel
              Expanded(
                child: Container(
                  height: size.height,
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                  ),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  _scaffoldKey.currentState.openDrawer();
                                });
                              },
                              icon: Icon(Icons.menu, color: Colors.black,
                                size: 25,),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Container(
                                height: 45,
                                child: defaultFormField(
                                  prefix: Icons.search,
                                  label: 'Search',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 10,),
                            IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => TableView()));
                              },
                              icon: Icon(Icons.table_chart_outlined, color: Colors.black,
                                size: 25,),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                        Padding(
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
                        NotificationsDetails(),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

}
