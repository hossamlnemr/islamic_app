// ignore_for_file: unused_import, duplicate_import, depend_on_referenced_packages, use_key_in_widget_constructors, prefer_const_constructors

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:islamic_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
            titleMedium: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0)),
      ),
      home: home_page(),
    );
  }
}
