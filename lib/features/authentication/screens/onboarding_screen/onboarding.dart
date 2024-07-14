import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding_screen/widgets/onboarding_dot_navigation.dart';
import 'package:t_store/features/authentication/screens/onboarding_screen/widgets/onboarding_next_button.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,

            /// Onboarding Pages
            children: const [
              OnboardingPage(
                onboardingImagePath: TImages.onBoardingImage1,
                onboardingTitle: TTexts.onBoardingTitle1,
                onboardingSubTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                onboardingImagePath: TImages.onBoardingImage2,
                onboardingTitle: TTexts.onBoardingTitle2,
                onboardingSubTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                onboardingImagePath: TImages.onBoardingImage3,
                onboardingTitle: TTexts.onBoardingTitle3,
                onboardingSubTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnboardingSkip(),

          /// Dot Navigation Button
          const OnboardingDotNavigation(),

          /// Next Button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
