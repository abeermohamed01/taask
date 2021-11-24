import 'package:flutter/material.dart';
import 'package:taask/Home/Notification_center/view.dart';

import 'data_info.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: 320,
      child: Row(
        children: [
          Expanded(
            flex:1,
            child: Container(
              height: size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10)),
                color: Colors.blue[800],
              ),
             child: DataInfo(),
            ),
          ),
          Expanded(
            flex:5,
            child: Container(
              height: size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                color: Colors.blue[50],
              ),
             child: NotificationsCenter(),
            ),
          )
        ],
      ),
    );
  }
}

