// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? click;

  const CronometroBotao({
    Key? key,
    required this.icon,
    required this.text,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
        ),
        onPressed: click,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                icon,
                size: 25,
              ),
            ),
            Text(text),
          ],
        ));
  }
}
