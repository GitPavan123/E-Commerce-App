import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/login_screen/login.dart';
import 'package:t_store/features/authentication/screens/signup_screen/widgets/signup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      /// App Bar
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.offAll(const LoginScreen()),
          icon: Icon(Iconsax.arrow_left,
              color: THelperFunctions.toggleColors(isDark, context)),
        ),
      ),
      body: SingleChildScrollView(
        /// SignUp header
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// SignUp Form
              const SignUpForm(),
              const SizedBox(
                height: 4,
              ),

              /// Form Divider
              FormDivider(
                isDark: isDark,
                label: TTexts.orSignUpWith.capitalize!,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Social Buttons
              SocialButtons(isDark: isDark),
            ],
          ),
        ),
      ),
    );
  }
}
