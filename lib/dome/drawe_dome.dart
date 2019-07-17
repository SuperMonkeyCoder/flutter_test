import 'package:flutter/material.dart';

class DrawerDome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('dengxiaojun', style:TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('dengxiaojun@163.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('http://pic27.nipic.com/20130314/11899688_194041137000_2.jpg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: NetworkImage('http://pic27.nipic.com/20130314/11899688_194041137000_2.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.5),
                        BlendMode.hardLight 
                      )
                  )
                ),
              ),
              ListTile(
                title: Text(
                  'data',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.message,
                  color: Colors.black12,
                  size: 20,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text(
                  'favorite',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.black12,
                  size: 20,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text(
                  'setting',
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(
                  Icons.settings,
                  color: Colors.black12,
                  size: 20,
                ),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
  }
}