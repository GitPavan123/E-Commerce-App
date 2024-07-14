import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.image,
    this.applyImageRadius = false,
    this.boxBorder,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = TSizes.md,
  });
  final double? width, height;
  final String image;
  final bool applyImageRadius;
  final BoxBorder? boxBorder;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallbackAction? onPressed;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(TSizes.md),
          border: boxBorder,
        ),
        padding: padding,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(TSizes.md),
          child: isNetworkImage
              ? applyImageRadius
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(borderRadius),
                      child: Image.network(fit: fit, image))
                  : Image.network(fit: fit, image)
              : applyImageRadius
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(borderRadius),
                      child: Image(
                        fit: fit,
                        image: AssetImage(image),
                      ),
                    )
                  : Image(
                      fit: fit,
                      image: AssetImage(image),
                    ),
        ),
      ),
    );
  }
}
