//import 'package:drawer/src/dr.dart';
import 'package:flutter/material.dart';

import 'dr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: DrawerMenu(),
    );
  }
}
