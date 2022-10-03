import 'package:esam_sharf/responsive.dart';
import 'package:esam_sharf/screens/home/components/project_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "MY PROJECTS",
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: KdefaultPadding,
        ),
        Responsive(
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          mobile: ProjectsGridView(crossAxisCount: 1, childAspectRatio: 1.7),
          desktop: ProjectsGridView(),
          tablet: ProjectsGridView(childAspectRatio: 1.1),
        )
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: KdefaultPadding,
          mainAxisSpacing: KdefaultPadding),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
