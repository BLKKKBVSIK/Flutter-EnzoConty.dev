import 'package:flutter/material.dart';
import 'package:flutter_enzoconty/screens/about_screen.dart';
import 'package:flutter_enzoconty/screens/hobbies_screen.dart';

List<Widget> screenList = [
  AboutScreen(),
  HobbiesScreen(),
  Container(
    width: 500,
    height: 900,
    color: Colors.green,
  ),
  Container(
    width: 500,
    height: 900,
    color: Colors.blue,
  ),
  Container(
    width: 500,
    height: 900,
    color: Colors.red,
  ),
  Container(
    width: 500,
    height: 900,
    color: Colors.pink,
  ),
];
