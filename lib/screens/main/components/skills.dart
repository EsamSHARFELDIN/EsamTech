import 'package:flutter/material.dart';

import '../../../components/animated_progress_indicator.dart';
import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "SKILLS",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.75,
                    label: 'Flutter',
                  ),
                ),
                SizedBox(
                  width: KdefaultPadding,
                ),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.65,
                    label: 'Dev App',
                  ),
                ),
                SizedBox(
                  width: KdefaultPadding,
                ),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.60,
                    label: 'Web',
                  ),
                ),
                SizedBox(
                  width: KdefaultPadding,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.75,
                    label: 'JAVA',
                  ),
                ),
                SizedBox(
                  width: KdefaultPadding,
                ),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.65,
                    label: 'JavaScript',
                  ),
                ),
                SizedBox(
                  width: KdefaultPadding,
                ),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.60,
                    label: 'JSFS',
                  ),
                ),
                SizedBox(
                  width: KdefaultPadding,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.85,
                    label: 'Video Editor',
                  ),
                ),
                SizedBox(
                  width: KdefaultPadding,
                ),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.63,
                    label: 'Photographique',
                  ),
                ),
                SizedBox(
                  width: KdefaultPadding,
                ),
                Expanded(
                  child: AnimatedCircularProgressIndicator(
                    percentage: 0.75,
                    label: 'Réseaux',
                  ),
                ),
                SizedBox(
                  width: KdefaultPadding,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
