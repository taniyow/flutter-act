import 'package:animals/widget/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:animals/widget/animalCard.dart';
import 'package:animals/model/animal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Animal> animals = [];

  @override
  void initState() {
    animals = animalList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animals')
        ),
        body: ListView.builder(
          itemCount: animals.length,
          itemBuilder: (context, index) => AnimalCard(
            animal: animals[index], 
            onPressed: () {
              Get.to(DetailsPage(animal: animals[index]));
            }
          ),
        ),
      ),
    );
  }
}
