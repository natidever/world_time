import 'package:flutter/material.dart';
import 'home.dart';
import 'location.dart';
import 'loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes: {
      '/': (context) {
        print("Navigating to Home");
        return Home();
      },
      '/loading': (context) {
        print("Navigating to Loading");
        return Loading();
      },
      '/location': (context) {
        print("Navigating to Location");
        return Location();
      },
    },
  ));
}
