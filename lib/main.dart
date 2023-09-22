

import 'package:flutter/material.dart';
import 'package:islamic_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
            titleMedium: const TextStyle(fontFamily: 'Quicksand', fontSize: 15.0)),
      ),
      home: const home_page(),
    );
  }
}
