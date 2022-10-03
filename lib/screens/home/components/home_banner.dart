import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:esam_sharf/responsive.dart';
import 'package:esam_sharf/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.3 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/profile.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: KdarkColor.withOpacity(0.76),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: KdefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: KdefaultPadding / 2),
                const MyBuildAnimatedText(),
                const SizedBox(height: KdefaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: () {
                      launchURL(
                          "https://www.youtube.com/channel/UCAoEwaH3863FHy0l2dyosKg");
                    },
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: KdefaultPadding,
                          horizontal: KdefaultPadding * 2),
                      backgroundColor: KprimaryColor,
                    ),
                    child: const Text(
                      "ExPLORE NOW",
                      style: TextStyle(color: KdarkColor),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: KdefaultPadding / 2),
          Text("I build "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(width: KdefaultPadding / 2),
          if (Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("Responsive web and mobile app.",
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText("Complete Flutter Protfolio app UI & Website.",
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText("Flutter Chat app .",
            speed: const Duration(milliseconds: 60))
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(color: KprimaryColor),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
