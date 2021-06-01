import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      title: Text("Flutter"),
      centerTitle: true,
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ],
    );
  }
}
