import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/login_screen/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login_screen/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyles.spacingWithAppBarHeight,
            child: Column(
              children: [
                /// Login Header
                LoginHeader(isDark: isDark),

                /// Login Form
                const LoginForm(),

                /// Form Divider
                FormDivider(
                  isDark: isDark,
                  label: TTexts.orSignInWith.capitalize!,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Social Buttons
                SocialButtons(isDark: isDark)
              ],
            )),
      ),
    );
  }
}
