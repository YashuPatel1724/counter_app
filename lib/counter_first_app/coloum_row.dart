import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: coloum(),
    );
  }
}

class coloum extends StatefulWidget {
  const coloum({super.key});

  @override
  State<coloum> createState() => _State();
}

class _State extends State<coloum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Map',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      backgroundColor: Color(0xffEEEEEE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exit',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.exit_to_app,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14,),
            Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Play',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.play_arrow,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14,),
            Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pause',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.pause,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14,),
            Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Stop',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.stop,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14,),
            Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Close',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.close,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14,),
            Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delete',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.delete,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14,),
            Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.email,
                    size: 28,
                  ),
                ],
              ),
            ),
            SizedBox(height: 14,),
            Container(
              height: 80,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Call',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w800),
                  ),
                  Icon(
                    Icons.call,
                    size: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
