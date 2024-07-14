import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/shadow_styles.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/personalization/home/body/custom_image_card.dart';
import 'package:t_store/common/widgets/personalization/home/body/widgets/hero_icon_builder.dart';
import 'package:t_store/common/widgets/personalization/home/body/widgets/product_intro_builder.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: isDark ? TColors.darkerGrey : TColors.white,
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          boxShadow: [ShadowStyles.verticalProductShadow],
        ),
        child: Column(
          children: [
            CircularContainer(
              backgroundColor: isDark ? TColors.dark : TColors.light,
              padding: const EdgeInsets.all(8),
              child: Stack(
                children: [
                  const RoundedImage(
                    image: TImages.productImage1,
                  ),
                  Positioned(
                    top: TSizes.sm,
                    child: CircularContainer(
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      width: 40,
                      height: 24,
                      borderRadius: 8,
                      child: Center(
                        child: Text(
                          "78%",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.dark),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: TSizes.sm - 5,
                    child: HeartIconBuilder(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: TSizes.sm,
            ),
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductIntroBuilder(
                    title: "Green Nike Air Shoes",
                  ),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  const Row(
                    children: [
                      ProductIntroBuilder(
                        title: "Nike",
                        labelLarge: false,
                      ),
                      SizedBox(
                        width: TSizes.xs,
                      ),
                      Icon(
                        Iconsax.verify5,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$35.5",
                        style: Theme.of(context).textTheme.headlineMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.black,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(
                                  TSizes.productImageRadius,
                                ),
                                bottomRight: Radius.circular(
                                    TSizes.productImageRadius))),
                        child: const SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child: Icon(
                            Iconsax.add,
                            color: TColors.white,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
