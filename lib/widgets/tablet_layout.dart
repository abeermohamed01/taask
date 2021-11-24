import 'package:flutter/material.dart';
import 'package:taask/Home/Notification_center/components/details.dart';
import 'package:taask/Home/Notification_center/components/tab_bar.dart';

import 'custom_check.dart';
import 'custom_text_form_field.dart';
import 'drawar.dart';

class TabletLayout extends StatefulWidget {

  @override
  _TabletLayoutState createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout> {
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
                  BoxDecoration(color: Colors.grey.withOpacity(0.3)),
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
                                child: DataTable(columns: <DataColumn>[
                                  DataColumn(
                                    label: CustomCheckBox(),
                                  ),
                                  DataColumn(
                                    label: Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text(
                                        "INVOICE",
                                        textScaleFactor: 1.0,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text(
                                        "Name",
                                        textScaleFactor: 1.0,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text(
                                        "Type",
                                        textScaleFactor: 1.0,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text(
                                        "DATE",
                                        textScaleFactor: 1.0,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text(
                                        "AMOUNT",
                                        textScaleFactor: 1.0,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text(
                                        "STATUS",
                                        textScaleFactor: 1.0,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text(
                                        "Attatchment",
                                        textScaleFactor: 1.0,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: Text(
                                        " ",
                                        textScaleFactor: 1.0,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ], rows: <DataRow>[
                                  tableData(
                                      true,
                                      "003452",
                                      "Josh Brolin",
                                      "Paypal",
                                      "22 June 2020",
                                      "300 EGP",
                                      "Delivery",
                                      "attach",
                                      Icons.more_vert),
                                  tableData(
                                      false,
                                      "003452",
                                      "Josh Brolin",
                                      "Vodafone",
                                      "22 June 2020",
                                      "300 EGP",
                                      "Pending",
                                      "attach",
                                      Icons.more_vert),
                                  tableData(
                                      true,
                                      "003452",
                                      "Josh Brolin",
                                      "Vodafone",
                                      "22 June 2020",
                                      "300 EGP",
                                      "Pending",
                                      "attach",
                                      Icons.more_vert),
                                  tableData(
                                      false,
                                      "003452",
                                      "Josh Brolin",
                                      "Paypal",
                                      "22 June 2020",
                                      "300 EGP",
                                      "Delivery",
                                      "attach",
                                      Icons.more_vert),
                                  tableData(
                                      false,
                                      "003452",
                                      "Josh Brolin",
                                      "Paypal",
                                      "22 June 2020",
                                      "300 EGP",
                                      "Delivery",
                                      "attach",
                                      Icons.more_vert),
                                  tableData(
                                      false,
                                      "003452",
                                      "Josh Brolin",
                                      "Paypal",
                                      "22 June 2020",
                                      "300 EGP",
                                      "Delivery",
                                      "attach",
                                      Icons.more_vert),
                                  tableData(
                                      false,
                                      "003452",
                                      "Josh Brolin",
                                      "Paypal",
                                      "22 June 2020",
                                      "300 EGP",
                                      "Delivery",
                                      "attach",
                                      Icons.more_vert),
                                  tableData(
                                      false,
                                      "003452",
                                      "Josh Brolin",
                                      "Paypal",
                                      "22 June 2020",
                                      "300 EGP",
                                      "Delivery",
                                      "attach",
                                      Icons.more_vert),
                                  tableData(
                                      false,
                                      "003452",
                                      "Josh Brolin",
                                      "Paypal",
                                      "22 June 2020",
                                      "300 EGP",
                                      "Delivery",
                                      "attach",
                                      Icons.more_vert),
                                ]),
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

  FittedBox iconMenuBar(IconData icon, double size, int i) {
    return FittedBox(
      child: InkWell(
        onTap: () {
          setState(() {
            select = i;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            select == i
                ? Container(
              color: Colors.white,
              width: 2,
              height: 20,
            )
                : Container(),
            SizedBox(
              width: 10,
            ),
            Icon(icon, color: Colors.white.withOpacity(0.5), size: size),
          ],
        ),
      ),
    );
  }

  ListTile userTile(String image, String name, String time) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(image.toString()),
        maxRadius: 20,
      ),
      title: Text(
        name,
        style: TextStyle(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        time,
        style: TextStyle(
            color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w300),
      ),
    );
  }

  DataRow tableData(bool check, String invoice, String name, String type,
      String date, String amount, String status, String attach, IconData icon) {
    return DataRow(cells: [
      DataCell(CustomCheckBox(
        index: select,
      ),

      ),
      DataCell(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            invoice,
            textScaleFactor: 1.0,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      DataCell(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            name,
            textScaleFactor: 1.0,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      DataCell(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            type,
            textScaleFactor: 1.0,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      DataCell(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            date,
            textScaleFactor: 1.0,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      DataCell(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            amount,
            textScaleFactor: 1.0,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      DataCell(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            status,
            textScaleFactor: 1.0,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      DataCell(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            attach,
            textScaleFactor: 1.0,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      DataCell(
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Icon(
            icon,
            color: Colors.black,
          ),
        ),
      )
    ]);
  }
}
