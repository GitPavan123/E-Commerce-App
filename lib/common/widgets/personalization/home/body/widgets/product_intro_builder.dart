import 'package:flutter/material.dart';

class ProductIntroBuilder extends StatelessWidget {
  const ProductIntroBuilder({
    super.key,
    required this.title,
    this.labelLarge = true,
    this.maxLines = 2,
  });

  final String title;
  final bool labelLarge;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: labelLarge
              ? Theme.of(context).textTheme.labelLarge
              : Theme.of(context).textTheme.labelMedium,
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
