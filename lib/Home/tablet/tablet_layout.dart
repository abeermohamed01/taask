import 'package:flutter/material.dart';
import 'package:taask/Home/Notification_center/components/details.dart';
import 'package:taask/Home/Notification_center/components/tab_bar.dart';
import 'package:taask/widgets/pop_menu.dart';
import 'package:taask/widgets/table_body.dart';
import 'package:taask/widgets/table_header.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/drawar.dart';

class TabletLayout extends StatefulWidget {

  @override
  _TabletLayoutState createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {


  int i = 0;
  int select = 3;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawers(),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  height: size.height,
                  padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                  decoration:
                  BoxDecoration(color: Colors.blue[50]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                _scaffoldKey.currentState.openDrawer();
                              });
                            },
                            icon: Icon(
                              Icons.menu,
                              color: Colors.black,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                              ),
                              child: defaultFormField(
                                prefix: Icons.search,
                                label: 'Search',
                                color: Colors.white,
                              ),
                            ),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomTabBar(),
                      SizedBox(
                        height: 30,
                      ),
                      PopMenu(),
                      SizedBox(
                        height: 20,
                      ),
                      NotificationsDetails()
                    ],
                  ),
                ),
              ),

              // Table Panel
              Expanded(
                flex: 13,
                child: Container(
                  height: size.height,
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  decoration: BoxDecoration(color: Colors.white12),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Transactions',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Container(
                              width: 180,
                              height: 35,
                              child: defaultFormField(
                                prefix: Icons.search,
                                label: 'Search',
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: size.width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 3,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Transactions',
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                                RaisedButton(
                                  onPressed: () {},
                                  color: Colors.lightBlue[300],
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Text(
                                    "Filter",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child:Column(
                                  children: [
                                  TableHeader(),
                                    Divider(),
                                    CustomRow(),
                                    Divider(color: Colors.red,),
                                    CustomRow(),
                                    Divider(),
                                    CustomRow(),
                                    Divider(),
                                    CustomRow(),
                                    Divider(),
                                    CustomRow(),
                                    Divider(),
                                    CustomRow(),
                                    Divider(),
                                    CustomRow(),
                                    Divider(),
                                  ],
                                )
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
