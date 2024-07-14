import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/user_authentication/success_screen.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class VerifyScreen extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final Widget backPage;
  final String titleSuccess;
  final String descriptionSuccess;
  const VerifyScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.backPage,
      required this.titleSuccess,
      required this.descriptionSuccess});

  @override
  Widget build(BuildContext context) {
    bool isDark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            highlightColor: Colors.transparent,
            icon: const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
              child: Icon(
                CupertinoIcons.clear,
              ),
            ),
            onPressed: () => Get.to(backPage),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(image),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              Text(title, style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text("pavanbindhu54@gmail.com",
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(description,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(SuccessScreen(
                    title: titleSuccess,
                    description: descriptionSuccess,
                  )),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                  ),
                  onPressed: () {},
                  child: Text(
                    TTexts.resendEmail,
                    style: TextStyle(
                        color: THelperFunctions.toggleColors(isDark, context)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
