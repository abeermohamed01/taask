import 'package:flutter/material.dart';
import 'package:taask/Home/Notification_center/components/details.dart';
import 'package:taask/Home/Notification_center/components/tab_bar.dart';
import 'package:taask/widgets/drawar.dart';
import 'package:taask/widgets/pop_menu.dart';
import 'package:taask/widgets/table_body.dart';
import 'package:taask/widgets/table_header.dart';

import '../../widgets/custom_text_form_field.dart';

class DeskTopLayout extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Panel
            Expanded(
              flex: size.width > 1340 ? 1 : 2,
              child: Container(
                height: size.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  color: Colors.blue[800],
                ),
                child: Drawers(),
              ),
            ),

            // Search Panel
            Expanded(
              flex: size.width > 1340 ? 4 : 8,
              child: Container(
                // width: 300,
                height: size.height,
                padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                decoration: BoxDecoration(color: Colors.blue[50]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                      ),
                      child: Padding(
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
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    CustomTabBar(),
                    SizedBox(
                      height: 30,
                    ),
                    PopMenu(),
                    SizedBox(
                      height: 20,
                    ),
                    NotificationsDetails(),

                    ],
                ),
              ),
            ),

            // Table Panel
            Expanded(
              flex: size.width > 1340 ? 14 : 16,
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
                                "Transactions",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900),
                              ),
                              RaisedButton(
                                onPressed: () {},
                                color: Colors.cyan,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
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
                            physics: AlwaysScrollableScrollPhysics(),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              physics: AlwaysScrollableScrollPhysics(),
                              child:Column(
                                children: [
                                  TableHeader(),
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
                                  CustomRow(),
                                  Divider(),
                                  CustomRow(),
                                  Divider(),
                                  CustomRow(),
                                ],
                              ),
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
    );
  }
}
