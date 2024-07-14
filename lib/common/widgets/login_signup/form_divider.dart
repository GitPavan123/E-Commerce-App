import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class FormDivider extends StatelessWidget {
  final String label;
  const FormDivider({
    super.key,
    required this.isDark,
    required this.label,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Divider(
              color: isDark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 60,
              endIndent: 5,
            ),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: isDark ? TColors.grey : TColors.darkGrey,
                ),
          ),
          Flexible(
            child: Divider(
              color: isDark ? TColors.darkGrey : TColors.grey,
              thickness: 0.5,
              indent: 5,
              endIndent: 60,
            ),
          ),
        ],
      ),
    );
  }
}
