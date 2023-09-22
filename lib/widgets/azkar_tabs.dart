// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../data/azkar_data.dart';
import 'azkar_item.dart';

class AzkarAlsabahTab extends StatelessWidget {
  const AzkarAlsabahTab({super.key, required this.azkarTitle});
  final String azkarTitle;
  @override
  Widget build(BuildContext context) {
    List azkarList = azkarData[azkarTitle];
    return ListView.builder(
      itemBuilder: (ctx, index) => AzkarItem(data: azkarList[index], num:index+1),
      itemCount: azkarList.length,
    );
  }
}
