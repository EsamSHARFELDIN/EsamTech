import 'package:flutter/material.dart';
import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: KdefaultPadding),
          child: Text(
            "CODING",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Flutter',
          percentage: 0.75,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Swift',
          percentage: 0.52,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Python',
          percentage: 0.70,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Java',
          percentage: 0.73,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'JavaScript',
          percentage: 0.65,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'PHP',
          percentage: 0.61,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'CSS & HTML',
          percentage: 0.8,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Cisco R&S',
          percentage: 0.72,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'AngularJS',
          percentage: 0.58,
        )
      ],
    );
  }
}
