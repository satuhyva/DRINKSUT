// ignore_for_file: file_names
import 'package:flutter/material.dart';


class IconButtonWithBackground extends StatelessWidget {

  final Function performAction;
  final Icon icon;

  const IconButtonWithBackground({ 
    Key? key, 
    required this.performAction, 
    required this.icon, 
    }) : super(key: key);


  @override 
  Widget build(BuildContext context) {
    return Material(
            // color: Theme.of(context).primaryColorLight,
            
            child: Center(
              child: Ink(
                decoration: ShapeDecoration(
                  color: Theme.of(context).primaryColor,
                  shape: const CircleBorder(),
                ),
                child: IconButton(
                  icon: icon,
                  iconSize: 24,
                  color: Colors.white,
                  onPressed: () => performAction(),
                ),
              ),
            ),
          );
  }
}
