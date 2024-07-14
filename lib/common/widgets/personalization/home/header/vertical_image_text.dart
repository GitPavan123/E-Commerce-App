import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
    this.toggleOnTheme = false,
  });

  final String image;
  final String title;
  final bool? toggleOnTheme;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: THelperFunctions.toggleOnThemeColors(
                      toggleOnTheme!, context)),
              child: THelperFunctions.toggleOnThemeImages(
                  toggleOnTheme!, context, image),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems - 10,
          ),
          SizedBox(
            width: 50,
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: THelperFunctions.toggleOnThemeColors(
                      toggleOnTheme!, context)),
            ),
          ),
        ],
      ),
    );
  }
}
