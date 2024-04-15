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
      home: Bolt(),
    );
  }
}

class Bolt extends StatefulWidget {
  const Bolt({super.key});

  @override
  State<Bolt> createState() => _BoltState();
}

class _BoltState extends State<Bolt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff212121),
        title: Text(
          'BOLT',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            letterSpacing: 30,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.yellow,
      body: Center(
        child: Container(
          width: 90,
          height: double.infinity,
          decoration: BoxDecoration( color: Color(0xff212121),),
          alignment: Alignment.center,
          child: Text('⚡',style: TextStyle(fontSize: 50),),

        ),
      )
    );
  }
}
