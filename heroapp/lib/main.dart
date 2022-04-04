import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:heroapp/model/heroes.dart';
import 'package:heroapp/widget/cards.dart';
import 'package:heroapp/widget/details.dart';

void main() {
  runApp(const HeroApp());
}

class HeroApp extends StatefulWidget {
  const HeroApp({Key? key}) : super(key: key);

  @override
  State<HeroApp> createState() => _MyAppState();
}

class _MyAppState extends State<HeroApp> {
  List<Avengers> heroes = [];

  @override
  void initState() {
    heroes = heroList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Avengers Heroes')
        ),
        body: ListView.builder(
          itemCount: heroes.length,
          itemBuilder: (context, index) => HeroCard(
            heroes: heroes[index], 
            onPressed: () {
              Get.to(DetailsPage(heroes: heroes[index]));
            }
          ),
        ),
      ),
    );
  }
}
