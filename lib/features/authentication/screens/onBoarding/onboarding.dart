import 'package:easy_mart/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:easy_mart/features/authentication/screens/onBoarding/widgets/onboarding_dot_navigation.dart';
import 'package:easy_mart/features/authentication/screens/onBoarding/widgets/onboarding_next_button.dart';
import 'package:easy_mart/features/authentication/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:easy_mart/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/onboarding_page.dart';

// Horizontal Scrollable Pages
// Skip Button
// Dot Navigation Smooth Page Indicator
// Circular Button

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // Skip Button
          const OnBoardingSkip(),

          // Dot Navigation Smooth Page Indicator
          OnBoardingDotNavigation(),

          // Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
