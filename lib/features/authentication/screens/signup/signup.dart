import 'package:easy_mart/common/widgets/login_signup/form_divider.dart';
import 'package:easy_mart/common/widgets/login_signup/social_buttons.dart';
import 'package:easy_mart/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:easy_mart/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:easy_mart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Form
              TSignupForm(),
              SizedBox(height: TSizes.spaceBtwSections),

              // Terms and condition
              const TTermsAndCondition(),
              SizedBox(height: TSizes.spaceBtwSections),
              // Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              SizedBox(height: TSizes.spaceBtwSections),
              // Social Button
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
