// ignore_for_file: file_names
import 'package:flutter/material.dart';

import './SetDrinkCount.dart';


const minDrinksCount = 1;
const maxDrinksCount = 10;


class AddAlcoholicDrinks extends StatefulWidget {
  const AddAlcoholicDrinks({Key? key}) : super(key: key);

  @override
  AddAlcoholicDrinksState createState() => AddAlcoholicDrinksState();
}  



class AddAlcoholicDrinksState extends State {

  var drinkCount = 1;
  increaseCount() {
    setState(() {
      if (drinkCount < maxDrinksCount) {
        drinkCount++;
      }
    });
  }
  decreaseCount() {
    setState(() {
      if (drinkCount > minDrinksCount) {
        drinkCount--;
      }
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Column(children: [
      SetDrinkCount(decreaseCount: decreaseCount, increaseCount: increaseCount, drinkCount: drinkCount)
    ],);
  }
}
