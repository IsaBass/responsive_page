import 'package:flutter/material.dart';
import 'package:responsividade_page/breakpoints.dart';

import 'custo_searchfield.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      //
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= 1200)
        return AspectRatio(
          aspectRatio: 3.2,
          child: Stack(
            children: [
              _imageAspectRatio(),
              Positioned(
                left: 50,
                top: 50,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: 400,
                    child: Column(
                      children: [
                        Text(
                          "Aprenda Flutter com este curso",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Bora aprender Flutter com este curso do prof. Daniel Ciolfi por apenas XX R\$. Qualidade Garantida.",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        CustomSearchField(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );

      if (maxWidth >= mobileBreakpoint) {
        return SizedBox(
          height: 280,
          child: Stack(
            children: [
              SizedBox(
                height: 240,
                width: double.maxFinite,
                child: _image(),
              ),
              Positioned(
                left: 40,
                top: 40,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    width: 320,
                    child: Column(
                      children: [
                        Text(
                          "Aprenda Flutter com este curso",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Bora aprender Flutter com este curso do prof. Daniel Ciolfi por apenas XX R\$. Qualidade Garantida.",
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 10),
                        CustomSearchField(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      return Column(
        children: [
          _imageAspectRatio(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aprenda Flutter com este curso",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Bora aprender Flutter com este curso do prof. Daniel Ciolfi por apenas XX R\$. Qualidade Garantida.",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 10),
                CustomSearchField(),
              ],
            ),
          ),
        ],
      );
    });
  }

  Widget _image() {
    return Image.network(
      "https://fernandofranzini.files.wordpress.com/2017/03/secret-of-mobile-apps.jpg",
      fit: BoxFit.cover,
    );
  }

  Widget _imageAspectRatio() {
    return AspectRatio(
      aspectRatio: 3.4,
      child: _image(),
    );
  }
}
