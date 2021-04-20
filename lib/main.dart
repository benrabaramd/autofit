import 'package:flutter/material.dart';
import './appdrawer/menu_dashboard_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AutoFit',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: MenuDashboardLayout ()
    );
  }

}