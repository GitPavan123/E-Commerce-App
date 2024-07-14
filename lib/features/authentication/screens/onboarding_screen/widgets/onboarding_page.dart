import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnboardingPage extends StatelessWidget {
  final String onboardingImagePath;
  final String onboardingTitle;
  final String onboardingSubTitle;

  const OnboardingPage({
    super.key,
    required this.onboardingImagePath,
    required this.onboardingTitle,
    required this.onboardingSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        TSizes.defaultSpace,
      ),
      child: Column(
        children: [
          Image(
            image: AssetImage(
              onboardingImagePath,
            ),
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
          ),
          Text(
            onboardingTitle,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            onboardingSubTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
