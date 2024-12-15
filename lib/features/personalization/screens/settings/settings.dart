import 'package:easy_mart/common/widgets/appbar/appbar.dart';
import 'package:easy_mart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:easy_mart/common/widgets/list_tiles/settings_tile_menu.dart';
import 'package:easy_mart/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:easy_mart/common/widgets/texts/section_heading.dart';
import 'package:easy_mart/features/authentication/screens/login/login.dart';
import 'package:easy_mart/features/personalization/screens/addresses/address.dart';
import 'package:easy_mart/features/personalization/screens/profile/widget/profile.dart';
import 'package:easy_mart/features/shop/screens/cart/cart.dart';
import 'package:easy_mart/features/shop/screens/notification/notification.dart';
import 'package:easy_mart/features/shop/screens/order/order.dart';
import 'package:easy_mart/utils/constants/colors.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header --
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// User Profile Card
                  TUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),

                  const SizedBox(height: TSizes.spaceBtwSections)
                ],
              ),
            ),

            /// Body --
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// Account Settings
                  TSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                      icon: Iconsax.home,
                      title: 'Address',
                      onTap: () => Get.to(() => UserAddressesScreen())),
                  TSettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My cart',
                      onTap: () => Get.to(() => CartScreen())),
                  // Orders
                  TSettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      onTap: () => Get.to(() => OrderScreen())),
                  TSettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      onTap: () => Get.to(() => NotificationScreen())),
                  TSettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      onTap: () {}),
                  TSettingsMenuTile(
                      icon: Iconsax.headphone, title: 'Help Center'),

                  /// App Settings
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),

                  ///
                  TSettingsMenuTile(
                      icon: Iconsax.location,
                      title: 'Geolocation',
                      trailing: Switch(value: true, onChanged: (value) {})),
                  TSettingsMenuTile(
                      icon: Iconsax.security_user,
                      title: 'Safe Mode',
                      trailing: Switch(value: true, onChanged: (value) {})),

                  /// Logout Button
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                      width: 180,
                      child: OutlinedButton(
                          onPressed: () => Get.to(() => LoginScreen()),
                          child: Text('Logout'))),
                  const SizedBox(height: TSizes.spaceBtwSections * 2.5)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
