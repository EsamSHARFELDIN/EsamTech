import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            "KNOWLEDGE",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const KnowledgeText(
          text: "Programmation Informatique",
        ),
        const KnowledgeText(
          text: "Dart - Flutter - DevApp - Sites Web",
        ),
        const KnowledgeText(
          text: "Swift - AngularJS - NodeJS - ReactJS",
        ),
        const KnowledgeText(
          text: "OOP - Java - JavaScript - JSFS ",
        ),
        const KnowledgeText(
          text: "C - Python - GIT - PHP - CSS",
        ),
        const KnowledgeText(
          text: "Analyse des problèmes technique",
        ),
        const KnowledgeText(
          text: "Nextwork, Linux, Hacking",
        ),
        const KnowledgeText(
          text: "Maintenance Informatique",
        ),
        const KnowledgeText(
          text: "Bases de données",
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: KdefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/icons/check.svg",
            color: KprimaryColor,
          ),
          const SizedBox(width: KdefaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
