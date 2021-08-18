// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../appBar//appBarContent.dart';
import '../addDrink/addDrinkForm.dart';



class AppScaffold extends StatefulWidget {
  const AppScaffold({Key? key}) : super(key: key);

  @override
  AppScaffoldState createState() => AppScaffoldState();
}



class AppScaffoldState extends State {


  void startAddingDrinks(BuildContext context, ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, 
      builder: (_) {
        return const AddDrinkForm();
      }, 
      backgroundColor: Colors.transparent
    );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        child: AppBarContent(), 
        preferredSize: Size.fromHeight(95),
        ),
      body: Column(children: 
        const [
          Text('content'),
          ],
        ),
      floatingActionButton: FloatingActionButton( 
          onPressed: () => startAddingDrinks(context),
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
  }
}