import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/icon_componets/Row1-2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IconScroll(),
    );
  }
}

class IconScroll extends StatefulWidget {
  const IconScroll({super.key});

  @override
  State<IconScroll> createState() => _IconScrollState();
}

class _IconScrollState extends State<IconScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 4,
        shadowColor: Colors.black,
        title: Text(
          'Icons',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu,color: Colors.black,),
      ),
      body: Column(
       children: [
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: List.generate(icon.length, (index) => Row1(icon:  icon[index]),)
           ),
         ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
             children: List.generate(icon2.length, (index) => Row1(icon:  icon2[index]),)
           ),
         ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           child: Row(
               children: List.generate(icon3.length, (index) => Row1(icon:  icon3[index]),)
           ),
         ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           reverse: true,
           child: Row(
               children: List.generate(icon4.length, (index) => Row1(icon:  icon4[index]),)
           ),
         ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           reverse: true,
           child: Row(
               children: List.generate(icon5.length, (index) => Row1(icon:  icon5[index]),)
           ),
         ),
         SingleChildScrollView(
           scrollDirection: Axis.horizontal,
           reverse: true,
           child: Row(
               children: List.generate(icon6.length, (index) => Row1(icon:  icon6[index]),)
           ),
         ),
       ],

      ),
    );
  }
}

List icon = [
  Icons.add,
  Icons.radio_button_checked,
  Icons.chevron_left_rounded,
  Icons.chevron_right_rounded,
  Icons.alarm,
];
List icon2 = [
  Icons.verified_user,
  Icons.account_circle,
  Icons.autorenew,
  Icons.shuffle,
];
List icon3 = [
  Icons.bolt,
  Icons.more_vert,
  Icons.height,
  Icons.call,
  Icons.search_rounded,
];
List icon4 = [
  Icons.call,
  Icons.search,
  Icons.height,
  Icons.play_arrow,
  Icons.stop,
];
List icon5 = [
  Icons.call,
  Icons.search,
  Icons.height,
  Icons.play_arrow,
  Icons.stop,
];
List icon6 = [
  Icons.bolt,
  Icons.height,
  Icons.account_circle,
  Icons.autorenew,
  Icons.shuffle,
];


