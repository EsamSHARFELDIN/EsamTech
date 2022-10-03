import 'package:esam_sharf/screens/home/components/my_education.dart';
import 'package:esam_sharf/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

import 'components/heigh_light.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyEducation(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
