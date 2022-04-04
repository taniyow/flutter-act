import 'package:animals/model/animal.dart';
import 'package:animals/widget/info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.animal});

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            animal.name,
            style: const TextStyle(
              fontFamily: 'PatrickHand-Regular',
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
              height: 300.0,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)
                )
              ),
              child: GestureDetector(
                child: Hero(
                  tag: animal.animalImage,
                  child: Image(
                    image: AssetImage(animal.animalImage),
                  ),
                ),
                onTap: () {
                  Get.back();
                }
              ),
            ),
            Container(
              height: 300,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Header(text: 'Description'),
                    SizedBox(height: 10.0),
                    SubHeader(text: animal.description)
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