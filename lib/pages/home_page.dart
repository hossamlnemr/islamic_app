// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import

import 'dart:math';

import 'package:flutter/material.dart';

import 'azkar_page.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  bool checkval = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                    top: Radius.zero, bottom: Radius.circular(70.0)),
                color: Colors.teal.shade500,
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("السلام عليكم",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600,
                        )),
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        //IconButton(onPressed: (){}, icon:Icon(Icons.search),color: Colors.white,alignment:Alignment.topRight,),

                        Opacity(
                          opacity: 0.5,
                          child: Image(
                            image: AssetImage('assets/images/first.png'),
                            height: 110,
                            width: 350,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(5.0),
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.0), bottom: Radius.zero),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text('الموقع'),
                                  Image(
                                    image: AssetImage(
                                        'assets/images/location.png'),
                                    fit: BoxFit.contain,
                                    height: 25,
                                    width: 20,
                                  ),
                                ],
                              ),
                              Text('مصر ,طما'),
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text('الوقت'),
                                  Image(
                                    image: AssetImage('assets/images/time.png'),
                                    fit: BoxFit.contain,
                                    height: 25,
                                    width: 20,
                                  ),
                                ],
                              ),
                              Text('6:08 pm'),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => AzkarPage()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.green.shade900, width: 2.0),
                          color: Colors.white,
                        ),
                        child: Image(
                          image: AssetImage('assets/images/rem.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'اذكار',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.green.shade900, width: 2.0),
                          color: Colors.white,
                        ),
                        child: Image(
                          image: AssetImage('assets/images/book.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'القران الكريم',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Colors.green.shade900, width: 2.0),
                          color: Colors.white,
                        ),
                        child: Image(
                          image: AssetImage('assets/images/doa.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      'ادعية',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  child: Image(
                    image: AssetImage('assets/images/big.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Checkbox(
                      value: checkval,
                      onChanged: (checkval) {},
                      shape: CircleBorder(),
                    ),
                    Text(
                      'العشاء',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '8:29',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Checkbox(
                      value: checkval,
                      onChanged: (checkval) {},
                      shape: CircleBorder(),
                    ),
                    Text(
                      'المغرب',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '7:13',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Checkbox(
                      value: checkval,
                      onChanged: (checkval) {},
                      shape: CircleBorder(),
                    ),
                    Text(
                      'العصر',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '4:24',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Checkbox(
                      value: checkval,
                      onChanged: (checkval) {},
                      shape: CircleBorder(),
                    ),
                    Text(
                      'الظهر',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '12:54',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Checkbox(
                      value: checkval,
                      onChanged: (checkval) {},
                      shape: CircleBorder(),
                    ),
                    Text(
                      'الفجر',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '5:08',
                      style: TextStyle(
                        color: Colors.green.shade900,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
