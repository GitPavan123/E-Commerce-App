import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: THelperFunctions.isDarkMode(context)
                ? TColors.primary
                : TColors.black,
            shape: const CircleBorder(),
            side: BorderSide(
              color: THelperFunctions.isDarkMode(context)
                  ? TColors.primary
                  : TColors.black,
            )),
        onPressed: () => OnboardingController.instance.nextPage(),
        child: const Icon(Iconsax.arrow_right_1),
      ),
    );
  }
}
