import 'package:flutter/material.dart';
import 'package:taask/widgets/custom_text_form_field.dart';
import 'package:taask/widgets/table_body.dart';
import 'package:taask/widgets/table_header.dart';

class TableView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_ios , color: Colors.black,)),
      ),
      body: ListView(
        children: [
          Container(
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
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          width: 60,
                          height: 35,
                          child: defaultFormField(
                            prefix: Icons.search,
                            label: 'Search',
                            color: Colors.grey,
                          ),
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
        ],
      ),
    );
  }
}
