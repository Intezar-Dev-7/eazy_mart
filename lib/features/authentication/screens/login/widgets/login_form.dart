import 'package:easy_mart/features/authentication/screens/password_configuration/forgot_passowrd.dart';
import 'package:easy_mart/features/authentication/screens/signup/signup.dart';
import 'package:easy_mart/navigation_menu.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:easy_mart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),
            // Password
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: TTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash)),
            ),
            SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),

            // Remember Me & Forgot passowrd
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remeber me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                // Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()),
                  child: const Text(TTexts.forgotPassword),
                ),
              ],
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // signIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => NavigationMenu()),
                  child: const Text(TTexts.signIn)),
            ),
            // adding spce between 2 buttons
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            // Create New Account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => SignupScreen()),
                  child: const Text(TTexts.createAccount)),
            ),
          ],
        ),
      ),
    );
  }
}
