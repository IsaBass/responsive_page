import 'package:flutter/material.dart';
import 'package:responsividade_page/pages/home/widgets/appbar/webappbar_responsivecontent.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 72,
      title: Row(
        children: [
          Text("Flutter"),
          const SizedBox(width: 32),
          WebAppBarResponsiveContent(),
          const SizedBox(width: 15),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(width: 15),
          SizedBox(
            height: 38,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Fazer Login",
                style: TextStyle(color: Colors.white),
              ),
              style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 2.0, color: Colors.white)),
            ),
          ),
          const SizedBox(width: 15),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Cadastre-se",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
