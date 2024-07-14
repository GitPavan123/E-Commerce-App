import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/user_authentication/verify_screen.dart';
import 'package:t_store/features/authentication/screens/signup_screen/signup.dart';
import 'package:t_store/features/authentication/screens/signup_screen/widgets/terms_and_conditions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  SignupPasswordAndRememberMeController controller =
      Get.put(SignupPasswordAndRememberMeController());
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.firstName,
                  ),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwItems,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: TTexts.lastName,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_add),
              labelText: TTexts.username,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.card),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: TTexts.phoneNo,
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
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
            height: TSizes.spaceBtwSections,
          ),
          const TermsAndConditions(),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(const VerifyScreen(
                image: TImages.deliveredEmailIllustration,
                title: TTexts.confirmEmail,
                description: TTexts.confirmEmailSubTitle,
                titleSuccess: TTexts.yourAccountCreatedTitle,
                descriptionSuccess: TTexts.yourAccountCreatedSubTitle,
                backPage: SignupScreen(),
              )),
              child: const Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
        ],
      ),
    );
  }
}

class SignupPasswordAndRememberMeController extends GetxController {
  final Rx<bool> isPasswordObscured = true.obs;
  final Rx<bool> isChecked = false.obs;
}
