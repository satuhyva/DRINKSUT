// ignore_for_file: file_names
import 'package:flutter/material.dart';

import './AddDrinkTitle.dart';
import './AlcoholicSlider.dart';


class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override 
  AddPageState createState() => AddPageState();
}


class AddPageState extends State {

  var isAlcoholic = true;

  changeIsAlcoholic(bool newState) {
    setState(() {
      isAlcoholic = newState;
    });
  }
    
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Theme.of(context).primaryColorLight,
      child: Column(
        children: [
          const AddDrinkTitle(), 
          AlcoholicSlider(isAlcoholic: isAlcoholic, changeIsAlcoholic: changeIsAlcoholic)
        ],));
  }
}