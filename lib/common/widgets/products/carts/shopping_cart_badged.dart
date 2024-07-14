import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ShoppingCartBadged extends StatelessWidget {
  const ShoppingCartBadged({
    super.key,
    this.onPressed,
    required this.color,
  });

  final VoidCallbackAction? onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () => onPressed,
          icon: Icon(
            Iconsax.shopping_bag,
            color: color,
          ),
        ),
        Positioned(
          top: TSizes.iconSm - 13,
          right: TSizes.iconSm - 13,
          child: Container(
            width: TSizes.iconSm,
            height: TSizes.iconSm,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(TSizes.iconSm),
              color: TColors.black.withOpacity(0.9),
            ),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context).textTheme.labelSmall!.apply(
                      color: TColors.grey,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
