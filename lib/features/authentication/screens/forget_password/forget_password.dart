import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/login_screen/login.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

import '../../../../common/widgets/user_authentication/verify_screen.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: IconButton(
                highlightColor: Colors.transparent,
                onPressed: () => Get.back(),
                icon: const Icon(
                  CupertinoIcons.clear,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(TTexts.forgetPasswordTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.spaceBtwItems),
                Text(TTexts.forgetPasswordSubTitle,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: 11)),
                const SizedBox(height: TSizes.spaceBtwSections),
                const SizedBox(height: TSizes.spaceBtwSections),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: TTexts.email),
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(const VerifyScreen(
                            image: TImages.deliveredEmailIllustration,
                            title: TTexts.forgetPasswordTitle,
                            description: TTexts.forgetPasswordSubTitle,
                            titleSuccess: TTexts.changeYourPasswordTitle,
                            descriptionSuccess:
                                TTexts.changeYourPasswordSubTitle,
                            backPage: LoginScreen(),
                          )),
                      child: const Text(TTexts.submit)),
                )
              ],
            ),
          ),
        ));
  }
}
