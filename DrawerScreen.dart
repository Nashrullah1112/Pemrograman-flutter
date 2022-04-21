

import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}
class _DrawerScreenState extends State<DrawerScreen>{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children:<Widget> [
          UserAccountsDrawerHeader(
          accountName:Text ("Muhammad Navis Nashrullah"),
            currentAccountPicture :
              CircleAvatar(backgroundImage: AssetImage("assets/img/Navis.jpg")),
            accountEmail: Text("navis7@gmail.com"),
        ),
          DrawerListTile(
            iconData:Icons.group,
            tittle:"NewGroup",
            onTilePressed: () {},
    ),
        DrawerListTile(
          iconData:Icons.lock,
          tittle: "New Secret Group",
          onTilePressed: (){},
    ),
        DrawerListTile(
          iconData:Icons.notifications,
          tittle: "New Channel Chat",
          onTilePressed: (){},
    ),

          DrawerListTile(
            iconData:Icons.contacts,
            tittle: "contacts",
            onTilePressed: (){},
    ),
    DrawerListTile(
    iconData:Icons.bookmark_border,
    tittle: "saved messages",
    onTilePressed: (){},
    ),
    DrawerListTile(
    iconData:Icons.phone,
    tittle: "calls",
    onTilePressed: (){},
    )
        ],
      ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? tittle;
  final onTilePressed;

  const DrawerListTile(
{Key? key, this.iconData, this.tittle, this.onTilePressed})
:super(key:key);
  @override
Widget build( context){
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        tittle!,
        style: TextStyle(fontSize: 16),
       ),
    );
  }
}