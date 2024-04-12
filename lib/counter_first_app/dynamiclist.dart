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
      home: dynamicList(),
    );
  }
}

class dynamicList extends StatefulWidget {
  const dynamicList({super.key});

  @override
  State<dynamicList> createState() => _dynamicListState();
}

class _dynamicListState extends State<dynamicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dynamic',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(l1.length, (index) => colorBox(index: index+1))
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                l1.add(1);
              });
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(50)),
              child: Icon(Icons.add,color: Colors.white,),
            ),
          ),
          SizedBox(width: 10,),
          InkWell(
            onTap: () {
              setState(() {
                l1.removeAt(l1.length-1);
              });
            },
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(50)),
              child: Icon(Icons.remove,color: Colors.white,),
            ),
          )
        ],
      )
    );
  }

  Container colorBox({required index}) {
    return Container(
            alignment: Alignment.center,
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: (index%2==0)?Color(0xff75E2FF):Color(0xff5689C0),
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(10),
            child: Text(
              '$index',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 35),
            ),
          );
  }
}
List l1 = [];
