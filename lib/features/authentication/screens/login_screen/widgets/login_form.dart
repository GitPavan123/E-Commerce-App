import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/forget_password/forget_password.dart';
import 'package:t_store/features/authentication/screens/signup_screen/signup.dart';
import 'package:t_store/utils/constants/colors.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../personalization/bottom_navigation_bar/navigation_menu.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  LoginPasswordAndRememberMeController controller =
      Get.put(LoginPasswordAndRememberMeController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            Obx(
              () => TextFormField(
                obscureText: controller.isPasswordObscured.value,
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(
                    Iconsax.password_check,
                  ),
                  suffixIcon: IconButton(
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      controller.isPasswordObscured.value =
                          !controller.isPasswordObscured.value;
                    },
                    icon: Obx(
                      () => Icon(
                        controller.isPasswordObscured.value
                            ? Iconsax.eye_slash
                            : Iconsax.eye,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: controller.isChecked.value,
                        onChanged: (value) {
                          controller.isChecked.value =
                              !controller.isChecked.value;
                        },
                      ),
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        splashFactory: NoSplash.splashFactory,
                      ),
                      onPressed: () => Get.to(const ForgetPassword()),
                      child: Text(
                        TTexts.forgetPassword,
                        style: const TextStyle().copyWith(
                          color: TColors.primary,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.offAll(const NavigationMenu()),
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(const SignupScreen()),
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPasswordAndRememberMeController extends GetxController {
  final Rx<bool> isPasswordObscured = true.obs;
  final Rx<bool> isChecked = false.obs;
}
