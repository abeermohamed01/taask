import 'package:flutter/material.dart';

import 'drawar.dart';

class MobileLayout extends StatefulWidget {

  @override
  _MobileLayoutState createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
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
              // Search Panel
              Expanded(
                child: Container(
                  height: size.height,
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: (){
                              setState(() {
                                _scaffoldKey.currentState.openDrawer();
                              });
                            },
                            icon: Icon(Icons.menu,color: Colors.black,size: 25,),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: 20,top: 13),
                                    hintText: "Search",
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Icon(Icons.search,color: Colors.grey,),
                                    )
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      // Container(
                      //   padding: EdgeInsets.all(8.0),
                      //   width: size.width,
                      //   height: size.height - 100,
                      //   child: ContainedTabBarView(
                      //       tabBarProperties: TabBarProperties(
                      //         labelColor: Color(0xFF343434),
                      //         labelStyle: TextStyle(
                      //             fontSize: 20.0,
                      //             color: Color(0xFFc9c9c9),
                      //             fontWeight: FontWeight.w700),
                      //         indicator: UnderlineTabIndicator(
                      //             borderSide: BorderSide(color: Colors.blue, width: 4.0),
                      //             insets: EdgeInsets.only(bottom: 50,right: 80,left: 80)
                      //         ),
                      //         unselectedLabelColor: Colors.grey,
                      //         unselectedLabelStyle: TextStyle(
                      //             fontSize: 20.0,
                      //             color: Color(0xFFc9c9c9),
                      //             fontWeight: FontWeight.w700),
                      //         //indicatorPadding: EdgeInsets.symmetric(horizontal: i==1 ? 10 : 0)
                      //       ),
                      //       tabs: [
                      //         Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Text(
                      //               "Active Sessions",
                      //               style: TextStyle(
                      //                   fontSize: 14,
                      //                   fontWeight: FontWeight.w900
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //         Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             Text(
                      //               "Notifications",
                      //               style: TextStyle(
                      //                 //color: Colors.grey,
                      //                   fontSize: 14,
                      //                   fontWeight: FontWeight.w900
                      //               ),
                      //             ),
                      //             SizedBox(width: 5,),
                      //             CircleAvatar(
                      //               maxRadius: 11,
                      //               backgroundColor: Colors.blue,
                      //               child: Padding(
                      //                 padding: EdgeInsets.all(5),
                      //                 child: Text(
                      //                   "12",
                      //                   style: TextStyle(
                      //                       color: Colors.white,
                      //                       fontSize: 10,
                      //                       fontWeight: FontWeight.w300
                      //                   ),
                      //                 ),
                      //               ),
                      //             )
                      //           ],
                      //         ),
                      //       ],
                      //       views: [
                      //         SingleChildScrollView(
                      //           physics: AlwaysScrollableScrollPhysics(),
                      //           child: Theme(
                      //             data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      //             child: ExpansionTile(
                      //               title: Text(
                      //                 "Today",
                      //                 style: TextStyle(
                      //                     color: Colors.black,
                      //                     fontSize: 12,
                      //                     fontWeight: FontWeight.w300
                      //                 ),
                      //               ),
                      //               children: [
                      //                 userTile("https://images.unsplash.com/photo-1601582589907-f92af5ed9db8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9ydHJhaXRzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80","Afnan Session","04/2/2020 10:30 AM"),
                      //                 userTile("https://images.unsplash.com/photo-1576083895015-17223a61998e?ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&ixlib=rb-1.2.1&w=1000&q=80","Sara Session","04/2/2020 10:30 AM"),
                      //                 userTile("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHw%3D&w=1000&q=80","Ahmed Session","04/2/2020 10:30 AM"),
                      //                 userTile("https://media.istockphoto.com/photos/farmer-spraying-his-crops-using-a-drone-picture-id935726026?b=1&k=20&m=935726026&s=170667a&w=0&h=95DUrcacdE2bZsSiIlhMv4EfVdel_UVWSHxOiQcfSas=","Eman Session","04/2/2020 10:30 AM"),
                      //                 userTile("https://media.istockphoto.com/photos/young-man-shopping-online-picture-id1305615921?b=1&k=20&m=1305615921&s=170667a&w=0&h=nQ1qcUP8MBo5OkghDXZb_nDKgJmxjK7VkAJ4yb0n4-M=","Khaled Session","04/2/2020 10:30 AM"),
                      //               ],
                      //             ),
                      //           ),
                      //         ),
                      //
                      //         Container(
                      //             color: Colors.transparent
                      //         )
                      //       ],
                      //       onChange: (index){
                      //         i = index;
                      //       }
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  ListTile userTile(String image, String name, String time){
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(image.toString()),
        maxRadius: 20,
      ),
      title: Text(
        name,
        style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w600
        ),
      ),
      subtitle: Text(
        time,
        style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w300
        ),
      ),
    );
  }

}
