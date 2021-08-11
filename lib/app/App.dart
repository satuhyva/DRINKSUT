// ignore_for_file: file_names
import 'package:flutter/material.dart';

import '../appBarContent/AppBarContent.dart';
import './pages.dart';
import './navigationBarItems.dart';


const navigationBarKey = Key('Navigation Bar');

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override 
  AppState createState() => AppState();
}


class AppState extends State {

  var selectedPage = 0;

  void changePage(int newPage) {
    setState(() {
      selectedPage = newPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(95),
        child: AppBarContent(),
      ),
      body: pages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        key: navigationBarKey,
        items: navigationBarItems,
        currentIndex: selectedPage,
        onTap: changePage,
        selectedItemColor: Theme.of(context).primaryColorLight, 
        unselectedItemColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
        
      );
  }

}







