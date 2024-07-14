import 'package:flutter/material.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers/onboarding_controller.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      top: TDeviceUtils.getAppBarHeight() - 10,
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(),
        child: Text(
          "Skip",
          style: const TextStyle().copyWith(
              color: THelperFunctions.toggleColors(isDark, context),
              fontSize: TSizes.fontSizeSm),
        ),
      ),
    );
  }
}
