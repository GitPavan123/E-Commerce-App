import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class HeartIconBuilder extends StatelessWidget {
  const HeartIconBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HeartIconController controller = HeartIconController();
    bool isDark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: isDark ? TColors.dark : TColors.light),
      child: IconButton(
          onPressed: () => controller.changeOnTap(),
          icon: Obx(
            () => Icon(
              size: TSizes.iconMd,
              controller.iconStatus.value ? Iconsax.heart5 : Iconsax.heart,
              color: isDark
                  ? controller.iconStatus.value
                      ? Colors.red
                      : TColors.light
                  : controller.iconStatus.value
                      ? Colors.red
                      : TColors.darkGrey,
            ),
          )),
    );
  }
}

class HeartIconController extends GetxController {
  final Rx<bool> iconStatus = false.obs;
  void changeOnTap() {
    iconStatus.value = !iconStatus.value;
  }
}
