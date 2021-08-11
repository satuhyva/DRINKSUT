// ignore_for_file: file_names
import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {

  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageArea = Expanded(child: Container(color: Colors.blueGrey.shade100));
    return Column(children: [pageArea]);
  }

}