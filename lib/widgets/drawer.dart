import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageURL =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrZUoJuWT48YoL-nGaBqBNPyi_uX6XWqbwsmA1NU4FQ3luIE9FoF5T2F0Qxeijp56oOKs&usqp=CAU";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.black54),
              accountName: Text("Anshit Verma"),
              accountEmail: Text("anshit1223@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageURL),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.cube_box_fill,
              color: Colors.white,
            ),
            title: Text(
              "Orders",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.location_solid,
              color: Colors.white,
            ),
            title: Text(
              "Address",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
