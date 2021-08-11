// ignore_for_file: file_names
import 'package:flutter/material.dart';




class AlcoholicSlider extends StatelessWidget {

  final bool isAlcoholic;
  final Function changeIsAlcoholic;
  const AlcoholicSlider({ Key? key, required this.isAlcoholic, required this.changeIsAlcoholic }) : super(key: key);

  @override 
  Widget build(BuildContext context) {

    final textNonAlcoholic = Text(
      'Alkoholiton',
      style: TextStyle(
        fontSize: 17,
        color: isAlcoholic ? Theme.of(context).primaryColor : Theme.of(context).primaryColorDark,
        fontWeight: isAlcoholic ? FontWeight.normal : FontWeight.bold,
        ),
      );

    final textAlcoholic = Text(
      'Sisältää alkoholia',
      style: TextStyle(
        fontSize: 17,
        color: isAlcoholic ? Theme.of(context).primaryColorDark : Theme.of(context).primaryColor,
        fontWeight: isAlcoholic ? FontWeight.bold : FontWeight.normal,
        ),
      );




    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        textNonAlcoholic,
        Switch(
          value: isAlcoholic, 
          activeColor: Theme.of(context).primaryColorDark,
          inactiveThumbColor: Theme.of(context).primaryColorDark,
          onChanged: (value) {
            changeIsAlcoholic(value);
          }
        ),
        textAlcoholic,
    ],);
  }


  

}