import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration:  BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          _opcionesMenu(Icons.pages, Colors.blue, Text('Pages'), () => Navigator.pushReplacementNamed(context, HomePage.routeName)),
          _opcionesMenu(Icons.party_mode, Colors.blue, Text('Party Mode'), (){}),
          _opcionesMenu(Icons.people, Colors.blue, Text('People'), (){}), 
          _opcionesMenu(Icons.settings, Colors.blue, Text('Settings'), () => Navigator.pushReplacementNamed(context, SettingsPage.routeName)),
        ],
      ),
    );
  }

  ListTile _opcionesMenu(IconData icon, Color color, Widget content, Function onPress) {
    return ListTile(
            leading: Icon(icon, color: color),
            title: content,
            onTap: onPress,
          );
  }
}