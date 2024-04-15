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
      home: Spilt(),
    );
  }
}

class Spilt extends StatefulWidget {
  const Spilt({super.key});

  @override
  State<Spilt> createState() => _SpiltState();
}

class _SpiltState extends State<Spilt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        title: Text(
          'SPLITTER',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xffFF9800),
      body: Column(
        children: [
          Container(
            height: 350,
            color: Colors.orange,
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(10, (index) => coloumncontainer(index+1))
              ),
            ),
          ),

          Container(
            height: 345,
            color: Colors.orange,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(10, (index) => rowcontainer(index+1))
              ),
            ),
          )
        ],
      )
    );
  }

  Container coloumncontainer(int index) {
    return Container(
      margin: EdgeInsets.all(10),
        height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
      alignment: Alignment.center,
      child: Text('$index',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
    );
  }
  Container rowcontainer(int index) {
    return Container(
      margin: EdgeInsets.all(10),
      height: double.infinity,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.yellow,
      ),
      alignment: Alignment.center,
      child: Text('$index',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
    );
  }
}
