import 'package:flutter/material.dart';
import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class Languages extends StatelessWidget {
  const Languages({
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
            "LANGUAGES",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          label: 'English',
          percentage: 0.75,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'French',
          percentage: 0.80,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Arabic',
          percentage: 1.0,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'spanish',
          percentage: 0.35,
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.20,
          label: "Italien",
        ),
      ],
    );
  }
}
