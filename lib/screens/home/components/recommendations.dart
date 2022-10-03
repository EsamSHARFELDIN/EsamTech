import 'package:esam_sharf/screens/home/components/recommendation_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: KdefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "RECOMMENDATIONS",
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: KdefaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendation.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: KdefaultPadding),
                  child: RecommendationCard(
                    recommendation: demo_recommendation[index],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
