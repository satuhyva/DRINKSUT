// ignore_for_file: file_names
import 'package:flutter/material.dart';

import './drinkTypeList.dart';
import './setDrinkCount.dart';



class AddDrinkForm extends StatefulWidget {

  const AddDrinkForm({
    Key? key,
  }) : super(key: key);

  @override
  AddDrinkFormState createState() => AddDrinkFormState();
}



class AddDrinkFormState extends State {

  var drinkType = drinkTypeList[0];
  var drinkCount = 1;

  void setDrinkType(type) {
    setState(() {
      drinkType = type;
    });
  }
  void decreaseCount() {
    setState(() {
      if (drinkCount > 1) {
        drinkCount -= 1;
      }
    });
  }
  void increaseCount() {
    setState(() {
      if (drinkCount < 10) {
        drinkCount += 1;
      }
    });
  }
  void saveDrinks(BuildContext context) {
    print('SAVE DRINKS');
    Navigator.of(context).pop();
  }
  


  @override 
  Widget build(BuildContext context) {

    final title = Text(
      'LISÄÄ DRINKKI',
      style: TextStyle(
        fontSize: 26, 
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.bold,
      )
    );
    final info = Text(
      'tai useampi',
      style: TextStyle(
        fontSize: 16, 
        color: Theme.of(context).primaryColor,
        fontWeight: FontWeight.normal,
      )
    );

  final options = drinkTypeList.map((option) => 
    Row(
      children: [
              Radio( 
                value: option,
                groupValue: drinkType, 
                onChanged: (value) { 
                  setDrinkType(option);
                },
              ),
               Text(option, style: TextStyle(color: Theme.of(context).primaryColor)),
      ],
    )).toList();



    return Card( 
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        padding: const EdgeInsets.all(10),
        child: 
        Column(
          children: [
            title,
            info,
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: 
                  Column(
                    children: [
                      ...options,
                    ],
              ),),
            
            SetDrinkCount(decreaseCount: decreaseCount, increaseCount: increaseCount, drinkCount: drinkCount),
            Container(
              padding: const EdgeInsets.only(top: 30),
              child: ElevatedButton(
              onPressed: () => saveDrinks(context), 
              child: Container(
                margin: const EdgeInsets.all(10),
                child: const Text('TALLENNA', style: TextStyle(fontSize: 20))
              )
              ),
            ),
          ],
          ),
        ),
    );
  }
}