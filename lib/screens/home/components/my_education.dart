import 'package:esam_sharf/models/education.dart';
import 'package:esam_sharf/responsive.dart';
import 'package:esam_sharf/screens/home/components/education_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class MyEducation extends StatelessWidget {
  const MyEducation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "MY EDUCATION",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: KdefaultPadding,
        ),
        Responsive(
          mobileLarge: EducationGridView(crossAxisCount: 2),
          mobile: EducationGridView(crossAxisCount: 1, childAspectRatio: 1.7),
          desktop: EducationGridView(),
          tablet: EducationGridView(childAspectRatio: 1.1),
        )
      ],
    );
  }
}

class EducationGridView extends StatelessWidget {
  const EducationGridView({
    Key? key,
    this.crossAxisCount = 1,
    this.childAspectRatio = 4,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_education.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: KdefaultPadding,
          mainAxisSpacing: KdefaultPadding),
      itemBuilder: (context, index) => EducationCard(
        project: demo_education[index],
      ),
    );
  }
}
