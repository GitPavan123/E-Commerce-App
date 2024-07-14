import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/signup_screen/widgets/signup_form.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  SignupPasswordAndRememberMeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
              value: controller.isChecked.value,
              onChanged: (value) {
                controller.isChecked.value = !controller.isChecked.value;
              },
            ),
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: "${TTexts.iAgreeTo} ",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: "${TTexts.privacyPolicy} ",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: isDark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          isDark ? TColors.white : TColors.primary)),
              TextSpan(
                  text: "${TTexts.and} ",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: TTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: isDark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          isDark ? TColors.white : TColors.primary)),
            ],
          ),
        ),
      ],
    );
  }
}
