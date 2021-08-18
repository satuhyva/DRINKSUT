// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../common/IconButtonWithBackground.dart';



class SetDrinkCount extends StatelessWidget {

    final Function decreaseCount;
    final Function increaseCount;
    final int drinkCount;

  const SetDrinkCount({
    Key? key,
    required this.decreaseCount,
    required this.increaseCount,
    required this.drinkCount,
    }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Text(
          'LUKUMÄÄRÄ', 
          style: TextStyle(fontSize: 16, color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)
          ),
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButtonWithBackground(
              key: const Key('down'),
              performAction: decreaseCount, 
              icon: const Icon(Icons.arrow_downward),
              ),
            Container(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: 
                Text(
                  drinkCount.toString(), 
                  key: const Key('drinkCount'),
                  style: 
                    TextStyle(
                      fontSize: 22, 
                      color: Theme.of(context).primaryColor, 
                      fontWeight: FontWeight.bold,
                  )),
                ),
            IconButtonWithBackground(
              key: const Key('up'),
              performAction: increaseCount, 
              icon: const Icon(Icons.arrow_upward),
              ),
            ],
          )  
      ],);

  }
}
