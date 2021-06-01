import 'package:flutter/material.dart';
import 'package:responsividade_page/breakpoints.dart';
import 'package:responsividade_page/pages/home/widgets/course_item.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GridView.builder(
          // não dar erro com size indefinido de gridview da pagina principal
          shrinkWrap: true,
          // não permite rolagem , deixa isso com a principal
          physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            // crossAxisCount: 3,
            maxCrossAxisExtent: 280,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),

          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0 : 16,
          ),
          itemBuilder: (context, index) {
            return CourseItem();
          },
        );
      },
    );
  }
}
