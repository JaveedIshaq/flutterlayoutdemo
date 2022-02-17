import 'dart:developer';
import 'package:flutter/material.dart';

class RowDemoOne extends StatefulWidget {
  const RowDemoOne({Key? key}) : super(key: key);

  @override
  State<RowDemoOne> createState() => _RowDemoOneState();
}

class _RowDemoOneState extends State<RowDemoOne> {
  MainAxisAlignment mainAxis = MainAxisAlignment.start;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Start"), value: "start"),
      DropdownMenuItem(child: Text("Center"), value: "center"),
      DropdownMenuItem(child: Text("End"), value: "end"),
      DropdownMenuItem(child: Text("SpaceBetween"), value: "spacebetween"),
      DropdownMenuItem(child: Text("SpaceAround"), value: "spaceAround"),
      DropdownMenuItem(child: Text("SpaceEven"), value: "spaceEven"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Demo'),
        actions: [
          DropdownButton(
              hint: Text(
                "Main Axis",
                style: TextStyle(color: Colors.white),
              ),
              items: dropdownItems,
              onChanged: (value) {
                if (value == 'start') {
                  setState(() {
                    mainAxis = MainAxisAlignment.start;
                  });
                } else if (value == 'center') {
                  setState(() {
                    mainAxis = MainAxisAlignment.center;
                  });
                }
              }),
          // IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
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
