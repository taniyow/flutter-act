import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:heroapp/model/heroes.dart';
import 'package:heroapp/widget/info.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.heroes});

  final Avengers heroes;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            heroes.name,
            style: const TextStyle(
              fontFamily: 'Avengero Regular',
              fontSize: 30.0
            ),
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              height: 250.0,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)
                )
              ),
              child: GestureDetector(
                child: Hero(
                  tag: heroes.heroImage,
                  child: Image(
                    image: AssetImage(heroes.heroImage),
                  ),
                ),
                onTap: () {
                  Get.back();
                }
              ),
            ),
            Container(
              height: 350.0,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Header(text: 'Description'),
                    SizedBox(height: 10.0),
                    SubHeader(text: heroes.description)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}