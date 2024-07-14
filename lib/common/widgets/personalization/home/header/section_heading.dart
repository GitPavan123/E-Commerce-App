import 'package:flutter/material.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.showActionButton = false,
    this.actionButtonText,
    this.actionButtonOnPressed,
    this.toggleOnTheme = false,
  });
  final String title;
  final bool showActionButton;
  final String? actionButtonText;
  final void Function()? actionButtonOnPressed;
  final bool? toggleOnTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: showActionButton ? 0 : 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: THelperFunctions.toggleOnThemeColors(
                    toggleOnTheme!, context)),
          ),
          if (showActionButton)
            TextButton(
              child: Text(
                actionButtonText!,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: THelperFunctions.toggleOnThemeColors(
                        toggleOnTheme!, context)),
              ),
              onPressed: () => actionButtonOnPressed,
            )
        ],
      ),
    );
  }
}
