import 'package:flutter/material.dart';

class AdvantageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    Widget buildAdvantage(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, size: 40),
          const SizedBox(width: 7),
          Column(
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
              ),
            ],
          )
        ],
      );
    }
    //

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 16,
        spacing: 8,
        children: [
          buildAdvantage("+45.000 alunos", "Didática Garantida"),
          buildAdvantage("+45.000 alunos", "Didática Garantida"),
          buildAdvantage("+45.000 alunos", "Didática Garantida"),
        ],
      ),
    );
  }
}
