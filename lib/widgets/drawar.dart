import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {

  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
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
  }  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: 100,
      padding: EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10)),
        color: Colors.blue[800],
      ),
      child: FittedBox(
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://image.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-thoughtful-stylish-young-woman-smiling-pleased-dreaming-imaging-perfect-plan-have-interesting-idea-thinking-looking-upper-left-corner_1258-59348.jpg"),
              maxRadius: 25,
            ),
            SizedBox(height: 45,),
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
        ),
      ),
    );
  }

  FittedBox iconMenuBar(IconData icon, double size, int i){
    return FittedBox(
      child: InkWell(
        onTap: (){
          setState(() {
            _index = i;
          });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _index==i ?
            Container(
              width: 4,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ) : Container(),
            SizedBox(width: 10,),
            Icon(icon,color: Colors.white.withOpacity(0.5),size: size),
          ],
        ),
      ),
    );
  }
}
