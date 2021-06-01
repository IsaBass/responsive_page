import 'package:flutter/material.dart';
import 'package:responsividade_page/breakpoints.dart';
import 'package:responsividade_page/pages/home/widgets/appbar/mobile_appbar.dart';
import 'package:responsividade_page/pages/home/widgets/appbar/web_appbar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Scaffold(
          appBar: constraint.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(double.infinity, 56))
              : PreferredSize(
                  child: WebAppBar(), preferredSize: Size(double.infinity, 72)),
          drawer: constraint.maxWidth >= mobileBreakpoint
              ? null
              : Drawer(
                  child: Align(
                      alignment: Alignment.center,
                      child: Text("Este é o Drawer")),
                ),
          body: Align(
            alignment: Alignment.center,
            child: Container(
              width: constraint.maxWidth / 4,
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: Mai,
                children: [
                  LayoutBuilder(builder: (ctx, constra) {
                    return Text(
                        "Este quadrado:\n" + constra.biggest.toString());
                  }),
                  Text("TELA INTEIRA:\n" + constraint.biggest.toString()),
                ],
              ),
            ),
          ));
    });
  }
}
