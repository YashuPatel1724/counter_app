import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row Row1({required IconData icon}) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 2,
                    blurRadius: 1,
                    blurStyle: BlurStyle.normal),
              ],
          ),
          child: Icon(icon,size: 30,),
        ),
      ),
    ],
  );
}
