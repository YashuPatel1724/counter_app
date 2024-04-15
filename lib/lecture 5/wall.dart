import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wall(),
    );
  }
}

class Wall extends StatefulWidget {
  const Wall({super.key});

  @override
  State<Wall> createState() => _WallState();
}

class _WallState extends State<Wall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('THE WALL', style: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500,),),
        backgroundColor: Color(0xff212121),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          row1(),
          row2(),
          row1(),
          row2(),
          row1(),
          row2(),
          row1(),
        ],
      ),
    );
  }

  Row row1() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 90,
              width: 100,
              color: Colors.brown,
            ),
            Container(
              height: 90,
              width: 150,
              color: Colors.brown,
            ),
            Container(
              height: 90,
              width: 100,
              color: Colors.brown,
            ),
          ],
        );
  }
}
Row row2() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 90,
              width: 125,
              color: Colors.brown,
            ),
            Container(
              height: 90,
              width: 100,
              color: Colors.brown,
            ),
            Container(
              height: 90,
              width: 125,
              color: Colors.brown,
            ),
          ],
        );
  }


