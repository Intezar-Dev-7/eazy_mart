import 'package:easy_mart/common/widgets/appbar/appbar.dart';
import 'package:easy_mart/common/widgets/image/t_circular_image.dart';
import 'package:easy_mart/common/widgets/texts/section_heading.dart';
import 'package:easy_mart/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:easy_mart/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:easy_mart/utils/constants/image_strings.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              ///
              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// Heading Profile Info
              const TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              //
              TProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Intezar',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'coding-7',
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              /// Heading Personal Info
              TSectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'user-id',
                value: '3212',
                icon: Iconsax.copy,
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'E-mail',
                value: 'coding@gmail.com',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Phone number',
                value: '12345678',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              TProfileMenu(
                onPressed: () {},
                title: 'Date of birth',
                value: '01-09-02',
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              OutlinedButton(
                onPressed: () {
                  // Show confirmation dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Close Account'),
                        content: const Text(
                            'Are you sure you want to close your account? This action cannot be undone.'),
                        actions: [
                          // Cancel Button
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: const Text('Cancel'),
                          ),
                          // Confirm Button
                          TextButton(
                            onPressed: () => Get.to(() => OnBoardingScreen()),
                            child: const Text(
                              'Confirm',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  'Close account',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
