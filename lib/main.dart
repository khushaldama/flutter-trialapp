import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter First App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Container(
          //this the specific containe for the height and width
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  //padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  //color: Colors.yellow,
                  margin: const EdgeInsets.all(5),
                  width: 110,
                  height: 110,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            spreadRadius: 2,
                            offset: Offset(2.0, 5.0))
                      ],
                      //color: Colors.orangeAccent,
                      gradient: LinearGradient(colors: [
                        Colors.orange,
                        Colors.white,
                        Colors.green,
                      ])),
                  child: Text("This is trial box",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10)),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 110,
                  height: 110,
                  color: Colors.pink,
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: 110,
                  height: 110,
                  color: Colors.lightGreen,
                )
              ]),
        ));
  }
}
