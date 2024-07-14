import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);

    NavigationController controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: isDark ? Color(0xff1b1b1c) : TColors.light,
          indicatorColor: isDark ? TColors.darkerGrey : TColors.grey,
          height: 70,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) =>
              controller.selectedIndex.value = value,
          destinations: [
            NavigationDestination(
              icon: Icon(
                Iconsax.home,
                color: THelperFunctions.toggleColors(isDark, context),
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.shop,
                color: THelperFunctions.toggleColors(isDark, context),
              ),
              label: "Store",
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.heart,
                color: THelperFunctions.toggleColors(isDark, context),
              ),
              label: "Wishlist",
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.user,
                color: THelperFunctions.toggleColors(isDark, context),
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final pages = [
    const HomeScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.yellow,
    )
  ];
}
