import 'package:flutter/material.dart';
import 'package:taask/Home/Notification_center/view.dart';

import 'data_info.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width/5,
      child: Row(
        children: [
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
            child: DataInfo(),
            ),
          ),
          Expanded(
            flex: size.width > 1340 ? 5 : 7,
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

