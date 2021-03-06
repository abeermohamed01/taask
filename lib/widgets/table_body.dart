import 'package:flutter/material.dart';

import 'custom_check.dart';

class CustomRow extends StatelessWidget {
 // int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Row(
                children: [
                  Container(
                    width: 100,
                    child: Row(
                      children: [
                        CustomCheckBox(),
                        SizedBox(width: 10,),
                        Text(
                          '003452',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80),
                    child: Text(
                      'Josh Brolin',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                    'Vodafone',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 75),
                    child: Text(
                      '22 June 2020',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Text(
                    '300 EGP',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120),
                    child: Text(
                      'Delivered',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Icon(
                    Icons.more_vert_outlined,
                    color: Colors.black,
                  ),
                ],
              ),
        );
  }
}
