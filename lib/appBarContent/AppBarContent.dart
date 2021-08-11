// ignore_for_file: file_names
import 'package:flutter/material.dart';


const titleString = 'DRINKSUT';
const infoString = 'alkoholin käytön omaseuranta';


class AppBarContent extends StatelessWidget {

  const AppBarContent({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {

    final title = Text(
      titleString, 
      style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 30)
      );
    
    final infoText = Text(
      infoString, 
      style: TextStyle(color: Theme.of(context).primaryColorLight, fontSize: 16)
      );
    
    final decoration = BoxDecoration(
      gradient: LinearGradient(colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).primaryColorDark])
      );
    return Container(
      decoration: decoration,
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [title, infoText]
      )
      );
  }
}

