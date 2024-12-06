import 'package:easy_mart/common/widgets/products/product_cards/product_cart_vertical.dart';
import 'package:easy_mart/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:easy_mart/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:easy_mart/common/widgets/layouts/grid_layout.dart';
import 'package:easy_mart/common/widgets/texts/section_heading.dart';
import 'package:easy_mart/features/shop/screens/all_products/all_products.dart';
import 'package:easy_mart/features/shop/screens/home/widget/home_appbar.dart';
import 'package:easy_mart/features/shop/screens/home/widget/home_categories.dart';
import 'package:easy_mart/features/shop/screens/home/widget/promo_slider.dart';
import 'package:easy_mart/utils/constants/image_strings.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// SearchBar
                  TSearchContainer(text: 'Search in store'),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: Colors.white,
                        ),

                        SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        /// Categories
                        THomeCategories()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // Heading
                  TSectionHeading(
                      title: 'Popuplar Categories',
                      onPressed: () => Get.to(() => const AllProductsScreen())),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Popular Products
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCartVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
