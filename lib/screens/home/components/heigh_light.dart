import 'package:esam_sharf/responsive.dart';
import 'package:flutter/material.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'heighlights.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KdefaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 826,
                        text: "+",
                      ),
                      label: "Subscribers",
                    ),
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 16,
                        text: "+",
                      ),
                      label: "Videos",
                    ),
                  ],
                ),
                const SizedBox(height: KdefaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 7,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeighLight(
                  counter: AnimatedCounter(
                    value: 826,
                    text: "+",
                  ),
                  label: "Subscribers",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 16,
                    text: "+",
                  ),
                  label: "Videos",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 7,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
              ],
            ),
    );
  }
}
