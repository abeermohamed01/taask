import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {


  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
//  int select = 3;

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
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: 80,
      padding: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
          color: Colors.blueAccent
      ),
      child:   Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 4),
            child: CircleAvatar(
              radius: 25,
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
                    width: 4,
                    height: 30,
                    decoration: BoxDecoration(
                      color: _index != null && _index == index
                          ? Colors.white
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 18,),
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
                          size: 35,
                        ),
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
      // FittedBox(
      //   child: Column(
      //     children: [
      //       CircleAvatar(
      //         backgroundColor: Colors.white,
      //         backgroundImage: NetworkImage("https://image.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-thoughtful-stylish-young-woman-smiling-pleased-dreaming-imaging-perfect-plan-have-interesting-idea-thinking-looking-upper-left-corner_1258-59348.jpg"),
      //         maxRadius: 15,
      //       ),
      //       SizedBox(height: 45,),
      //       iconMenuBar(Icons.home_outlined,20,0),
      //       SizedBox(height: 30),
      //       iconMenuBar(Icons.computer,18,1),
      //       SizedBox(height: 30),
      //       iconMenuBar(Icons.data_usage_rounded,18,2),
      //       SizedBox(height: 30),
      //       iconMenuBar(Icons.email,18,3),
      //       SizedBox(height: 30),
      //       iconMenuBar(Icons.calendar_today,18,4),
      //       SizedBox(height: 20),
      //       iconMenuBar(Icons.settings,18,5),
      //     ],
      //   ),
      // ),
    );
  }

  // FittedBox iconMenuBar(IconData icon, double size, int i){
  //   return FittedBox(
  //     child: InkWell(
  //       onTap: (){
  //         setState(() {
  //           select = i;
  //         });
  //       },
  //       child: Row(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         children: [
  //           select==i ?
  //           Container(
  //             width: 3,
  //             height: 25,
  //             decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 borderRadius: BorderRadius.all(Radius.circular(5))
  //             ),
  //           ) : Container(),
  //          SizedBox(width: 8,),
  //           Center(child: Icon(icon,color: select==i?Colors.white: Colors.white.withOpacity(0.5),size: size)),
  //         ],
  //       ),
  //     ),
  //   );
  //}
}
