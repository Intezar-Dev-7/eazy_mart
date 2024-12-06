import 'package:easy_mart/common/widgets/texts/section_heading.dart';
import 'package:easy_mart/features/shop/screens/checkout/checkout.dart';
import 'package:easy_mart/features/shop/screens/product_details/widget/bottom_add_to_cart.dart';
import 'package:easy_mart/features/shop/screens/product_details/widget/product_attributes.dart';
import 'package:easy_mart/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:easy_mart/features/shop/screens/product_details/widget/product_meta_data.dart';
import 'package:easy_mart/features/shop/screens/product_details/widget/ratiing_share_data.dart';
import 'package:easy_mart/features/shop/screens/product_reviews/widgets/product_reviews.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating and  Share Button
                  TRatingAndShare(),

                  ///  - Price , title, stock & brand
                  TProductMetaData(),

                  ///  - Attributes
                  TProductAttributes(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// -  Checkout
                  SizedBox(
                    width: 260,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => const CheckoutScreen()),
                        child: Text('Checkout')),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  ///  - Description
                  TSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    'This is the product description for Blue Nike sleeve less vest. Ther are more things that can be added But will do that work later onn , hgdfsgfjgsdgfjhsdgfsdgfsdhfjsdgf',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// - Reviews
                  Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                          title: 'reviews 199', showActionButton: false),
                      IconButton(
                          icon: Icon(Iconsax.arrow_right_3, size: 18),
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()))
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
