import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/personalization/home/body/vertical_product_card.dart';
import 'package:t_store/features/personalization/screens/home/widgets/banner_carousel.dart';
import 'package:t_store/features/personalization/screens/home/widgets/home_app_bar.dart';
import 'package:t_store/features/personalization/screens/home/widgets/primary_header_container.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../common/widgets/personalization/home/header/custom_search_bar.dart';
import '../../../../common/widgets/personalization/home/header/section_heading.dart';
import '../../../../common/widgets/personalization/home/header/vertical_image_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// App Bar
                  const HomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Search Bar
                  const CustomSearchBar(
                      text: 'Search in Store', icon: Iconsax.search_normal),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Section Header
                  const Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: SectionHeading(
                      title: "Popular Categories",
                      toggleOnTheme: false,
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  /// Popular Categories
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (_, index) {
                        return const VerticalImageText(
                          image: TImages.shoeIcon,
                          title: "Shoes sales",
                          toggleOnTheme: false,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            /// Body

            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Carousel Images
                  const ImageCarouselWithIndicator(
                    banner: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Product Cards
                  ProductGridBuilder(
                    itemCount: 4,
                    maxExtent: 278,
                    itemBuilder: (_, index) => const VerticalProductCard(),
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

class ProductGridBuilder extends StatelessWidget {
  const ProductGridBuilder({
    super.key,
    required this.itemCount,
    this.maxExtent,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? maxExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(0),
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: TSizes.gridViewSpacing,
          crossAxisSpacing: TSizes.gridViewSpacing,
          mainAxisExtent: maxExtent,
          crossAxisCount: 2),
      itemBuilder: itemBuilder,
    );
  }
}
