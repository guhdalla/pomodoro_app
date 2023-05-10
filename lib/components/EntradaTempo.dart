// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;
  final Color? color;

  const EntradaTempo({
    Key? key,
    required this.titulo,
    required this.valor,
    this.inc,
    this.dec,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var elevatedButton = ElevatedButton.styleFrom(
      shape: CircleBorder(),
      padding: EdgeInsets.all(15),
      backgroundColor: color,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titulo,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: dec,
              style: elevatedButton,
              child: Icon(Icons.arrow_downward),
            ),
            Text(
              '$valor min',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ElevatedButton(
              onPressed: inc,
              style: elevatedButton,
              child: Icon(Icons.arrow_upward),
            ),
          ],
        ),
      ],
    );
  }
}
