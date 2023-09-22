import 'package:flutter/material.dart';

import '../widgets/azkar_tabs.dart';

class AzkarPage extends StatelessWidget {
  const AzkarPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> azkarTabs = const [
      Tab(text: "أذكار الصباح"),
      Tab(text: "أذكار المساء"),
      Tab(text: "أذكار الصلاة")
    ];
    List<Widget> azkarScreens = const [
      AzkarAlsabahTab(azkarTitle: "أذكار الصباح"),
      AzkarAlsabahTab(azkarTitle: "أذكار المساء"),
      AzkarAlsabahTab(azkarTitle: "أذكار الصلاة"),
    ];
    Color mainColor=const Color(0xff004E34);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          
          appBar: AppBar(
            toolbarHeight: 30,
            backgroundColor: mainColor,
            centerTitle: true,
            title: const Text('أذكار المسلم'),
            bottom: TabBar(tabs: azkarTabs),
          ),
          body: TabBarView(children: azkarScreens),
        ),
      ),
    );
  }
}
