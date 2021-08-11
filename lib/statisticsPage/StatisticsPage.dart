// ignore_for_file: file_names
import 'package:flutter/material.dart';


class StatisticsPage extends StatelessWidget {

  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageArea = Expanded(child: Container(color: Theme.of(context).primaryColorLight));
    return Column(children: [pageArea]);
  }

}