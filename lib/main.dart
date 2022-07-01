import 'package:flutter/material.dart';
import 'package:trialapp/pages/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter First App", //this will shown in recent apps bar
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    ),
  );
}
