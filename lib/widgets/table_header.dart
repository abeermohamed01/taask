import 'package:flutter/material.dart';

import 'custom_check.dart';

class TableHeader extends StatelessWidget {
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Container(
            width: 100,
            child: Row(
              children: [
                CustomCheckBox(index: index,),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'INVOICE',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 106),
            child: Text(
              'NAME',
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),

          Text(
            'TYPE',
            style:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Text(
              'DATE',
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),

          Text(
            'STATUS',
            style:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 140),
            child: Text(
              'ATTACHMENT',
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
    //   Column(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.all(10.0),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Text(
    //             'Transactions',
    //             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    //           ),
    //          // SizedBox(width:800,),
    //           Container(
    //             width: 70,
    //             height: 25,
    //             decoration: BoxDecoration(
    //               color: Colors.lightBlue[300],
    //               borderRadius: BorderRadius.circular(15),
    //             ),
    //             child: Center(
    //               child: Text(
    //                 'Filter',
    //                 style: TextStyle(color: Colors.white),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //     SizedBox(
    //       height: 20,
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(left: 10, right: 10),
    //       child: Row(
    //         children: [
    //           Container(
    //             width: 100,
    //             child: Row(
    //               children: [
    //                 CustomCheckBox(),
    //                 SizedBox(
    //                   width: 10,
    //                 ),
    //                 Text(
    //                   'INVOICE',
    //                   style: TextStyle(
    //                       color: Colors.black, fontWeight: FontWeight.bold),
    //                 )
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 100),
    //             child: Text(
    //               'NAME',
    //               style:
    //                   TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //           Text(
    //             'TYPE',
    //             style:
    //                 TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 110),
    //             child: Text(
    //               'DATE',
    //               style:
    //                   TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    //             ),
    //           ),
    //           Text(
    //             'STATUS',
    //             style:
    //                 TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 110),
    //             child: Text(
    //               'ATTACHMENT',
    //               style:
    //                   TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    //             ),
    //           )
    //         ],
    //       ),
    //     )
    //   ],
    // );
  }
}
