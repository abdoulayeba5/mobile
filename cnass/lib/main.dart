import 'package:cnass/add.dart';
import 'package:cnass/form2.dart';
import 'package:cnass/login.dart';
import 'package:cnass/seance.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: [
          Colors.green,
          Colors.black,
          Colors.red,
          null,
          null,
        ][_currentIndex],
        title: [
          Text("Acceuil"),
          Text("liste de conference"),
          Text("formulaire"),
          Text(""),
          Text("")
        ][_currentIndex],
      ),
      body: [
        HomePage(),
        SeancePage(),
        AddSeance(),
        SimpleLoginScreen(),
        SimpleTextFields()
      ][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setCurrentIndex(index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Acceuil"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "seance"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Ajouter"),
          BottomNavigationBarItem(
              icon: Icon(Icons.login), label: "se conneter"),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout), label: "se conneter")
        ],
      ),
    ));
  }
}
