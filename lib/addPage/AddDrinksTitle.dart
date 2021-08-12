// ignore_for_file: file_names
import 'package:flutter/material.dart';


class AddDrinksTitle extends StatelessWidget {
  const AddDrinksTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      padding: const EdgeInsets.only(top: 40, bottom: 10),
      child: Center(
        child: Text(
          'LISÄÄ DRINKKI',
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 30, fontWeight: FontWeight.bold)
          )
        )
    );

  }
}