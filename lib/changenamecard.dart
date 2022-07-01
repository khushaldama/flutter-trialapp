import 'package:flutter/material.dart';
import 'package:trialapp/bg_image.dart';

class ChangeNameCrad extends StatelessWidget {
  const ChangeNameCrad({
    Key? key,
    required this.myText,
    required TextEditingController nameController,
  })  : _nameController = nameController,
        super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      BgImage(),
      SizedBox(
        height: 15,
      ),
      Text(
        myText,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.redAccent),
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _nameController,
          keyboardType: TextInputType.text,
          //obscureText: true,   //password type used
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Any Slogan On Plant",
              labelText: "Enter Slogan on Plant"),
        ),
      )
    ]);
  }
}
