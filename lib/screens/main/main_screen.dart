import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:esam_sharf/constants.dart';
import 'package:flutter/material.dart';
import 'components/side_menu.dart';
import 'package:esam_sharf/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              title: TyperAnimatedTextKit(
                speed: Duration(milliseconds: 100),
                isRepeatingAnimation: true,
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                ),
                text: const [
                  "Welcome to my Portfolio",
                  "I\'m Esam SHARFELDIN",
                  "I\'m a Freelancer Developer",
                ],
              ),
              backgroundColor: KprimaryColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: KmaxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  // Now this take 75%
                  // ((2+7) = 9) so 2/9=0.22 that maens 22% width
                  flex: 2,
                  child: SideMenu(),
                ),
              const SizedBox(
                width: KdefaultPadding,
              ),
              Expanded(
                // Now this take 25%
                //  7/9=0.78 that maens 78% width
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [...children],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
