import 'dart:developer';
import 'dart:html';
import 'package:flutter/material.dart';

class RowDemoTwo extends StatefulWidget {
  const RowDemoTwo({Key? key}) : super(key: key);

  @override
  State<RowDemoTwo> createState() => _RowDemoTwoState();
}

class _RowDemoTwoState extends State<RowDemoTwo> {
  late MainAxisAlignment mainAxis;
  int counter = 0;

  List<MainAxisAlignment> alignements = [
    MainAxisAlignment.start,
    MainAxisAlignment.center,
    MainAxisAlignment.end,
    MainAxisAlignment.spaceAround,
    MainAxisAlignment.spaceBetween,
    MainAxisAlignment.spaceEvenly
  ];

  @override
  void initState() {
    mainAxis = alignements[counter];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$counter'),
        actions: [
          TextButton.icon(
            onPressed: () {
              if (counter > 0)
                setState(() {
                  counter = counter - 1;
                });

              setState(() {
                mainAxis = alignements[counter];
              });
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            label: Text(
              '',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('$mainAxis'),
          ),
          TextButton.icon(
            onPressed: () {
              if (counter < 5)
                setState(() {
                  counter++;
                });

              setState(() {
                mainAxis = alignements[counter];
              });
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            label: Text(
              '',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.yellowAccent,
        child: Row(
          mainAxisAlignment: mainAxis,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.green,
              width: 60,
              height: 60,
              child: Icon(Icons.star),
            ),
            Container(
              color: Colors.blue,
              width: 60,
              height: 60,
              child: Icon(Icons.star),
            ),
            Container(
              color: Colors.white,
              width: 60,
              height: 60,
              child: Icon(Icons.star),
            ),
            Container(
              color: Colors.pink,
              width: 60,
              height: 60,
              child: Icon(Icons.star),
            ),
          ],
        ),
      ),
    );
  }
}
