import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CarouselNavigation extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  CarouselController? carouselController = CarouselController();
  void onSlideChanged(index) {
    selectedIndex.value = index;
  }
}
