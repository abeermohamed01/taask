import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taask/providers/tab_provider.dart';

class CustomTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Tab(
                index: 0,
                title: 'Active\nSessions',
              ),
              SizedBox(
                width: 30,
                height: 5,
              ),

              _Tab(
                title: 'Notifications\t',
                index: 1,
              ),
              CircleAvatar(
                radius: 7,
                backgroundColor: Colors.blue[800],
                child: Center(
                    child: Text(
                      '12',
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _Tab extends StatelessWidget {
  final String title;
  final int index;

  const _Tab({Key key, this.title, this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<TabProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(index == tabProvider.tab)
          Container(
            width:index==0? 40:80,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.blue[900],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        SizedBox(
          height: 5,
        ),
        TextButton(
          onPressed: () => tabProvider.changeTab(index),
          child: Text(
            title,
            style:
            index == tabProvider.tab ?
            TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold) : TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
