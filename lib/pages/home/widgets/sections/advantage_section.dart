import 'package:flutter/material.dart';
import 'package:responsividade_page/breakpoints.dart';

class AdvantageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    Widget buildHorAdvantage(String title, String subtitle) {
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

    Widget buildVertAdvantage(String title, String subtitle) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, size: 30),
          const SizedBox(height: 7),
          Text(
            title,
            // maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            // maxLines: 2,
            style: TextStyle(fontSize: 13, fontStyle: FontStyle.italic),
          ),
        ],
      );
    }
    //

    return LayoutBuilder(builder: (_, constraints) {
      ///
      if (constraints.maxWidth < mobileBreakpoint)
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Row(
            // alignment: WrapAlignment.spaceEvenly,

            children: [
              Expanded(
                child:
                    buildVertAdvantage("+45.000 alunos", "Didática Garantida"),
              ),
              const SizedBox(width: 4),
              Expanded(
                child:
                    buildVertAdvantage("+45.000 alunos", "Didática Garantida"),
              ),
              const SizedBox(width: 4),
              Expanded(
                child:
                    buildVertAdvantage("+45.000 alunos", "Didática Garantida"),
              ),
            ],
          ),
        );

      ///

      return Container(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey))),
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          runSpacing: 16,
          spacing: 8,
          children: [
            buildHorAdvantage("+45.000 alunos", "Didática Garantida"),
            buildHorAdvantage("+45.000 alunos", "Didática Garantida"),
            buildHorAdvantage("+45.000 alunos", "Didática Garantida"),
          ],
        ),
      );
    });
  }
}
