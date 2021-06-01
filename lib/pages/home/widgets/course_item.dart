import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network(
            "https://uk.trotec.com/images/mm-mobile-ps-01-f66b.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
        const SizedBox(height: 4),
        Flexible(
          child: AutoSizeText(
            "Criação de Apps Andoid e iOS com Flutter - Crie 14 Apps",
            minFontSize: 3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          "Nome do Prof.",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
        Text(
          "R\$ XX,00",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
