import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trialapp/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();

  var myText = "Change Me"; //const HomePage({Key? key}) : super(key: key);
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res =
        await http.get(Uri.https('jsonplaceholder.typicode.com', 'photos'));
    data = jsonDecode(res.body);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Flutter 1st App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //child: SingleChildScrollView(
        child: data != null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                /*child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID:- ${data[index]["id"]}"),
                      leading: Image.network(data[index]["url"]),
                    );
                  },
                  itemCount: data.length,
                ),*/
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(data[index]["title"]),
                      subtitle: Text("ID:- ${data[index]["id"]}"),
                      leading: Image.network(data[index]["url"]),
                    );
                  },
                  itemCount: data.length,
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),

      ///),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {
            myText;
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
