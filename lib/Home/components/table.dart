import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taask/widgets/custom_text_form_field.dart';
import 'package:taask/widgets/table_body.dart';

import 'package:taask/widgets/table_header.dart';

class MyTable extends StatefulWidget {
  @override
  _MyTableState createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  width: 760,
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
          Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: MediaQuery.of(context).size.height / 1.5,
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TableHeader(),
                    Divider(),
                    TableBody(),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
