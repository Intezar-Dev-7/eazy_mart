import 'package:easy_mart/common/styles/spacing_styles.dart';
import 'package:easy_mart/common/widgets/login_signup/form_divider.dart';
import 'package:easy_mart/common/widgets/login_signup/social_buttons.dart';
import 'package:easy_mart/features/authentication/screens/login/widgets/login_form.dart';
import 'package:easy_mart/features/authentication/screens/login/widgets/login_header.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:easy_mart/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarWeight,
          child: Column(
            children: [
              /// Logo,  Title & SubTitle
              TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
