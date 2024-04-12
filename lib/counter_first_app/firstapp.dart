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
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _State();
}

class _State extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Counter App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 4,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: ('Digits Counter\n'),
                style: TextStyle(
                  color: Colors.white30,
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: ('        $count'),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:(){
            setState(() {
              count++;
            });
          } ,
          backgroundColor: Colors.blue,
          child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}

int count = 0;

Widget counterapp()
{
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CounterApp(),
  );
}
