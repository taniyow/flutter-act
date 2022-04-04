import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Pumpkin Story'
      ),
    );
  }
}

class SubHeader extends StatelessWidget {
  SubHeader({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 25.0,
      ),
    );
  }
}