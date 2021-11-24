import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataInfo extends StatefulWidget {
  @override
  _DataInfoState createState() => _DataInfoState();
}

class _DataInfoState extends State<DataInfo> {
  int _index = 0;
  var icons = [
    Icons.home_outlined,
    Icons.computer,
    Icons.data_usage_rounded,
    Icons.email,
    Icons.calendar_today,
    Icons.settings
  ];
  _onSelected(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40 , right: 4),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://image.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-thoughtful-stylish-young-woman-smiling-pleased-dreaming-imaging-perfect-plan-have-interesting-idea-thinking-looking-upper-left-corner_1258-59348.jpg'),
          ),
        ),
        SizedBox(
          height: 60,
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: icons.length,
          itemBuilder: (BuildContext context, int index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                Container(
                  width: 3,
                  height: 25,
                  decoration: BoxDecoration(
                    color: _index != null && _index == index
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                SizedBox(width: 8,),
                InkWell(
                    onTap: () {
                      _onSelected(index);
                    },
                    child:Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        icons[index],
                        color: _index != null && _index == index
                            ? Colors.white
                            : Colors.white60,
                        size: 25,
                      ),
                    )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
