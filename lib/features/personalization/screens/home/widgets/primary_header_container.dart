import 'package:flutter/cupertino.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/custom_clipper_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/device/device_utility.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomClipperContainer(
      child: Container(
        height: TDeviceUtils.getScreenHeight(context) * 0.42,
        color: TColors.primary,
        child: Stack(
          children: [
            Positioned(
              top: -190,
              right: -250,
              child: CircularContainer(
                width: TDeviceUtils.getScreenWidth(context),
                height: TDeviceUtils.getScreenWidth(context),
                backgroundColor: TColors.white.withOpacity(0.1),
                borderRadius: TDeviceUtils.getScreenWidth(context),
              ),
            ),
            Positioned(
              bottom: -150,
              right: -310,
              child: CircularContainer(
                width: TDeviceUtils.getScreenWidth(context),
                height: TDeviceUtils.getScreenWidth(context),
                backgroundColor: TColors.white.withOpacity(0.1),
                borderRadius: TDeviceUtils.getScreenWidth(context),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
