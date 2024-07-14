import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/personalization/home/body/custom_image_card.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../controllers/home_controller.dart';

class ImageCarouselWithIndicator extends StatelessWidget {
  const ImageCarouselWithIndicator({
    super.key,
    required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    CarouselNavigation controller = Get.put(CarouselNavigation());

    return Column(
      children: [
        CarouselSlider(
            carouselController: controller.carouselController,
            items: banner.map((url) => RoundedImage(image: url)).toList(),
            options: CarouselOptions(
              autoPlayInterval: const Duration(milliseconds: 4000),
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
              autoPlay: true,
              onPageChanged: (index, _) => controller.onSlideChanged(index),
              viewportFraction: 1,
            )),
        const SizedBox(
          height: TSizes.spaceBtwItems + 6,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banner.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CircularContainer(
                    width: controller.selectedIndex.value == i ? 30 : 20,
                    height: 5,
                    backgroundColor: controller.selectedIndex.value == i
                        ? TColors.primary
                        : TColors.darkGrey,
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
