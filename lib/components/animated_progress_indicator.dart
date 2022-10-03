import 'package:flutter/material.dart';
import 'package:esam_sharf/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: KdefaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: KprimaryColor,
                  backgroundColor: KdarkColor,
                ),
                Center(
                  child: Container(
                    child: Text(
                      (value * 100).toInt().toString() + "%",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: KdefaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: KdefaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: KdefaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: const TextStyle(color: Colors.white),
                ),
                Text((value * 100).toInt().toString() + "%"),
              ],
            ),
            const SizedBox(
              height: KdefaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: KprimaryColor,
              backgroundColor: KdarkColor,
            ),
          ],
        ),
      ),
    );
  }
}
