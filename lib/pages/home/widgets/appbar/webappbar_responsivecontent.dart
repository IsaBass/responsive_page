import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        print(constraints.biggest);
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border: Border.all(color: Colors.grey[600]!)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                        child: TextField(
                      style: TextStyle(color: Colors.blue),
                      decoration: InputDecoration(
                          isCollapsed: true,
                          border: InputBorder.none,
                          hintText: "Pesquise Aqui",
                          hintStyle: TextStyle(color: Colors.grey[400])),
                    )),
                  ],
                ),
              ),
            ),
            if (constraints.biggest.width > 500) ...[
              const SizedBox(width: 12),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Aprender",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
            if (constraints.biggest.width > 700)
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Flutter",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
          ],
        );
      }),
    );
  }
}
