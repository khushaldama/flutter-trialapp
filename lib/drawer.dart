import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        //DrawerHeader(
        //  child: Text(
        //    "Hey User",
        //    style: TextStyle(color: Colors.orange, fontSize: 20),
        //  ),
        //  decoration: BoxDecoration(color: Colors.blueGrey),
        //),
        UserAccountsDrawerHeader(
          accountName: Text("Khushal Dama"),
          accountEmail: Text("khushal.damani2001@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?t=st=1656329579~exp=1656330179~hmac=4d03864bb6d6cff7db2fcb945aeee39aa0fa0938f65a825df7e2cb769560ab26&w=740"),
            //child: Image.network(
            //  "https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?t=st=1656329579~exp=1656330179~hmac=4d03864bb6d6cff7db2fcb945aeee39aa0fa0938f65a825df7e2cb769560ab26&w=740"),
          ),
        ),

        ListTile(
          leading: Icon(Icons.person),
          title: Text("User Name"),
          subtitle: Text("Personal"),
          trailing: Icon(Icons.edit),
        )
      ],
    ));
  }
}
