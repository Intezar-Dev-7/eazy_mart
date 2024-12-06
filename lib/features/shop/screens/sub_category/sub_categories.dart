import 'package:easy_mart/common/widgets/appbar/appbar.dart';
import 'package:easy_mart/common/widgets/image/rounded_image.dart';
import 'package:easy_mart/common/widgets/products/product_cards/product_cart_horizontal.dart';
import 'package:easy_mart/common/widgets/texts/section_heading.dart';
import 'package:easy_mart/utils/constants/image_strings.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(title: Text('Sports shirts'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Banners
              const TRoundedImage(
                  width: double.infinity,
                  imageUrl: TImages.promoBanner2,
                  applyImageRadius: true),

              /// Sub Categories
              Column(
                children: [
                  /// Heading
                  TSectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),

                  //
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: TSizes.spaceBtwItems),
                        itemBuilder: (context, index) =>
                            const TProductHorizontalCart()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
