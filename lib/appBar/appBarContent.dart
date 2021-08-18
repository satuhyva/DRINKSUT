// ignore_for_file: file_names
import 'package:flutter/material.dart';


const titleString = 'DRINKSUT';
const infoString = 'alkoholin käytön omaseuranta';


class AppBarContent extends StatelessWidget {
  const AppBarContent({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {

    const title = Text(
      titleString, 
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      );
    const info = Text(
      infoString,
      style: TextStyle(fontSize: 16),
      );
    return Container( 
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.only(top: 40),
      child: Column(children: [
        title,
        info
      ],),
    );
    
  }

}