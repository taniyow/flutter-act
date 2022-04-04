import 'package:flutter/material.dart';

import 'package:heroapp/model/heroes.dart';

class HeroCard extends StatelessWidget {
  HeroCard({
    required this.heroes,
    required this.onPressed,
  });

  Avengers heroes;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        height: 320.0,
        child: Stack(
          children: [
            Positioned(
              left: 50,
              top: 50,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(57, 174, 255, 0.5),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                constraints: const BoxConstraints(
                  maxHeight: 200,
                  maxWidth: 300
                ),
              )
            ),
            Positioned(
              left: 3.0,
              child: Hero(
                tag: heroes.id,
                child: Image.asset(
                  heroes.heroImage,
                  width: 200,
                  height: 250
                ),
              )
            ),
            Positioned(
              left: 160.0,
              top: 135.0,
              child: Text(
                heroes.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'IronManOfWar'
                ),
              ),
            ),
          ]
        )
      )
    );
  }
}
