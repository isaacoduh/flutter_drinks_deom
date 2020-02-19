import 'package:flutter/material.dart';

import '../models/drink.dart';

class DrinkItem extends StatelessWidget{
  final String title;
  final String imageUrl;
  final ServeTime servetime;

  DrinkItem({@required this.title, @required this.imageUrl, @required this.servetime});

  String get serveTimeText{
    switch(servetime){
      case ServeTime.PreDinner:
        return 'Pre Dinner';
        break;
      case ServeTime.Anytime:
        return 'Anytime';
        break;
      case ServeTime.AfterDinner:
        return 'After Dinner';
        break;
      default:
        return 'Unknown';
    }
  }

  void selectDrink(){}

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: selectDrink,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(15), topRight: Radius.circular(15),),
                  child: Image.network(imageUrl, height: 250, width: double.infinity, fit: BoxFit.cover,),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20,),
                    child: Text(
                      title,
                      style: TextStyle(fontSize: 26, color: Colors.white,),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(children: <Widget>[
                    Icon(Icons.schedule),
                    SizedBox(width: 6),
                    Text(serveTimeText),
                  ],)
                ],
              ),
            ),
          ],
        ),
      ),  
    );
  }
}