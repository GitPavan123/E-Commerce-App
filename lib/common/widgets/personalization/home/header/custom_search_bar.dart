import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = false,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        padding: const EdgeInsets.all(TSizes.md),
        width: TDeviceUtils.getScreenWidth(context),
        decoration: BoxDecoration(
          color: showBackground ? TColors.grey : Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: showBorder ? Border.all(color: TColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: TColors.darkerGrey,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: TColors.darkGrey),
            )
          ],
        ),
      ),
    );
  }
}
