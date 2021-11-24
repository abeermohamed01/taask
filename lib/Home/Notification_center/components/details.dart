import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationsDetails extends StatelessWidget {
  List<String> textItem =[
    'Afnan Session',
    'Khaled Session',
    'Ahmed Session',
    'Eman Session',
    'Sara Session'
  ];
  List<NetworkImage> images=[
    NetworkImage('https://image.freepik.com/free-photo/woman-takes-images-holding-photographic-camera-hands_176532-12497.jpg'),
    NetworkImage('https://image.freepik.com/free-photo/image-magnetic-handsome-helpless-young-man-shrugging-with-shoulders-looking-directly-raising-arms_176532-10250.jpg'),
    NetworkImage('https://img.freepik.com/free-photo/young-african-american-jazz-musician-singing-song-gradient-pink_155003-32579.jpg?size=338&ext=jpg'),
    NetworkImage('https://image.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-thoughtful-stylish-young-woman-smiling-pleased-dreaming-imaging-perfect-plan-have-interesting-idea-thinking-looking-upper-left-corner_1258-59348.jpg'),
    NetworkImage('https://image.freepik.com/free-photo/image-cheerful-smiling-woman-with-curly-hairstyle-red-lips-pointing-fingers-up-empty-space_1258-66651.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: textItem.length,
          itemBuilder: (BuildContext context , int index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: images[index],
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text(textItem[index].toString() , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('04/2/2020' , style: TextStyle(color: Colors.grey , fontSize: 10),),
                        SizedBox(width: 2,),
                        Text('10:30 AM' , style: TextStyle(color: Colors.grey , fontSize: 10),),

                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
