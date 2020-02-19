import 'package:drinksdemo/screens/filters_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

  Widget buildListTitle(String title, IconData icon, Function tapHandler){
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(title, style: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24, fontWeight: FontWeight.bold,),),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text('Drinks App', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22, color: Theme.of(context).primaryColor),),
          ),
          SizedBox(height:20),
          buildListTitle('Drinks', Icons.local_drink,(){
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTitle('Filters', Icons.settings, (){
            Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
          }),
        ],
      ),
    );
  }
}