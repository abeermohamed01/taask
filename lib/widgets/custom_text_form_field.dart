import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({

  IconData suffix,
  @required String label,
  @required IconData prefix,
  Color color,
}) =>
    TextFormField(

      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: label , labelStyle: TextStyle(color: Colors.grey[700] , fontSize: 15),
        prefixIcon: Icon(prefix , color: Colors.grey[700], size: 20,),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: color),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );