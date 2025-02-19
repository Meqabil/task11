import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard(
      {super.key,
      required this.height,
      required this.width,
      required this.myIcon,
      required this.data,
      required this.border});
  String data;
  double width;
  double height;
  BorderSide border;
  IconData myIcon;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(1),
        width: width,
        height: height,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: border,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 24,
              children: [
                Icon(
                  myIcon,
                  color: Colors.white,
                  size: 65,
                ),
                Text(
                  "${data}",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ]),
          color: Color(0xFF87B1E3),
        ),
      ),
    );
  }
}

class MyCard2 extends StatelessWidget {
  MyCard2(
      {super.key,
      required this.height,
      required this.width,
      required this.widget1,
      required this.widget2,
      required this.widget3,
      required this.space});
  Widget widget1;
  Widget widget2;
  Widget widget3;
  double width;
  double height;
  double space;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(1),
        width: width,
        height: height,
        child: Card(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: space,
              children: [widget1, widget2, widget3]),
          color: Color(0xFF87B1E3),
        ),
      ),
    );
  }
}
