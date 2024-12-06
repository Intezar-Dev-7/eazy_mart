import 'package:easy_mart/common/widgets/products/product_cards/product_cart_vertical.dart';
import 'package:easy_mart/common/widgets/brands/brand_showcase.dart';
import 'package:easy_mart/common/widgets/layouts/grid_layout.dart';
import 'package:easy_mart/common/widgets/texts/section_heading.dart';
import 'package:easy_mart/utils/constants/image_strings.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// -- Brands
              TBrandShowcase(
                images: [
                  TImages.productImage3,
                  TImages.productImage2,
                  TImages.productImage1,
                ],
              ),
              TBrandShowcase(
                images: [
                  TImages.productImage3,
                  TImages.productImage2,
                  TImages.productImage1,
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///  -- Products
              TSectionHeading(
                title: 'You might also like',
                onPressed: () {},
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => TProductCartVertical(),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              )
            ],
          ),
        ),
      ],
    );
  }
}
