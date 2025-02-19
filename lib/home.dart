import 'package:flutter/material.dart';
import 'package:task11/widgets/my_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 5,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCard(
                  width: MediaQuery.sizeOf(context).width / 2 - 8,
                  height: MediaQuery.sizeOf(context).height / 3 - 60,
                  data: "Male",
                  myIcon: Icons.male,
                  border: BorderSide(width: 2, color: Color(0xfff48c8c)),
                ),
                MyCard(
                  width: MediaQuery.sizeOf(context).width / 2 - 8,
                  height: MediaQuery.sizeOf(context).height / 3 - 60,
                  data: "Female",
                  myIcon: Icons.female,
                  border: BorderSide.none,
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            MyCard2(
              height: MediaQuery.sizeOf(context).height / 3 - 50,
              width: MediaQuery.sizeOf(context).width,
              widget1: Text("Height",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              widget2: Text("150.0",
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              widget3: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slider(
                    value: 50,
                    onChanged: (e) {},
                    max: 100,
                    inactiveColor: Colors.blue,
                    activeColor: Color(0xfff48c8c),
                  )),
              space: 5,
            ),
            Row(
              children: [
                MyCard2(
                  height: MediaQuery.sizeOf(context).height / 3 - 60,
                  width: MediaQuery.sizeOf(context).width / 2 - 10,
                  widget1: Text("Age",
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                  widget2: Text("18",
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                  widget3: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Card(
                                color: Color(0xfff48c8c),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                              Card(
                                color: Color(0xfff48c8c),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                        ],
                      )),
                  space: 15,
                ),
                MyCard2(
                  height: MediaQuery.sizeOf(context).height / 3 - 60,
                  width: MediaQuery.sizeOf(context).width / 2 - 10,
                  widget1: Text(
                    "Weight",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  widget2: Text("50",
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                  widget3: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Card(
                                color: Color(0xfff48c8c),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    )),
                              ),
                              Card(
                                color: Color(0xfff48c8c),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    )),
                              )
                            ],
                          ),
                        ],
                      )),
                  space: 15,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("CALCULATE",
                  style: TextStyle(fontSize: 16, color: Colors.white)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfff48c8c),
                  minimumSize: Size(MediaQuery.sizeOf(context).width, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
            )
          ],
        ),
      ),
    );
  }
}
