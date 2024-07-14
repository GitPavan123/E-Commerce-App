import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
      this.width,
      this.height,
      required this.backgroundColor,
      this.borderRadius = TSizes.cardRadiusLg,
      this.showBorder = false,
      this.borderColor = TColors.borderPrimary,
      this.child,
      this.padding,
      this.margin});
  final double? width;
  final double? height;
  final Color backgroundColor;
  final double borderRadius;
  final bool showBorder;
  final Color? borderColor;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: showBorder ? Border.all(color: borderColor!) : null,
      ),
      child: child,
    );
  }
}
