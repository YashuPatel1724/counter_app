import 'package:counter_app/counter_first_app/coloum_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Coloricon());
  }
}

class Coloricon extends StatefulWidget {
  const Coloricon({super.key});

  @override
  State<Coloricon> createState() => _colorIconState();
}

class _colorIconState extends State<Coloricon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'IconEditor',
            style: TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontWeight: FontWeight.w400,
            ),
          ),
          elevation: 4,
          shadowColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Color(0xffEFF1F3),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurStyle: BlurStyle.normal,
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ]
                ),
                alignment: Alignment.center,
                child: Icon(Myicon,size: 90,color: colorData,),
              ),
              SizedBox(
                height: 17,
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]
                ),
                alignment: Alignment.center,
                child: Text(
                  'Select Color',
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 17,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffFAFAFA),
                      borderRadius: BorderRadius.circular(13),
                  ),
                  child: Row(
                    children: List.generate(
                      colorList.length,
                      (index) => InkWell(
                        onTap: () {
                          setState(() {
                            colorData = colorList[index];
                          });
                        },
                        child: colorBox(Newcolor: colorList[index]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 17,),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurStyle: BlurStyle.normal,
                        blurRadius: 5,
                        spreadRadius: 1,
                      )
                    ]
                ),
                alignment: Alignment.center,
                child: Text(
                  'Select Icon',
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    children: List.generate(iconList.length, (index) => InkWell(
                      onTap: () {
                        setState(() {
                          Myicon = iconList[index];
                        });
                      },
                      child: iconBox(newicon: iconList[index]),
                    ))
                  ),
                ),
              )

            ],
          ),
        ));
  }

  Container colorBox({required Newcolor}) {
    return Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: Newcolor, borderRadius: BorderRadius.circular(15)),
    );
  }
}

Container iconBox({required newicon}) {
  return Container(
    height: 80,
    width: 80,
    margin: EdgeInsets.all(10),
    decoration:
    BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurStyle: BlurStyle.normal,
            blurRadius: 5,
            spreadRadius: 1,
          )
        ]),
    child: Icon(newicon),
  );
}


List colorList = [
  Colors.red,
  Colors.yellow,
  Colors.teal,
  Colors.cyanAccent,
  Colors.deepOrange,
  Colors.deepPurpleAccent,
  Colors.grey,
];
List iconList = [
  Icons.add,
  Icons.radio_button_checked,
  Icons.chevron_right_rounded,
  Icons.chevron_left_rounded,
  Icons.alarm,
  Icons.call,
  Icons.search,
];
Color? colorData;
IconData? Myicon;