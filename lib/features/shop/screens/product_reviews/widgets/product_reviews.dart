import 'package:easy_mart/common/widgets/appbar/appbar.dart';
import 'package:easy_mart/common/widgets/products/ratings/rating_indicator.dart';
import 'package:easy_mart/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:easy_mart/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// - App Bar
      appBar: TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      /// - Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Rating and Reviews are verfied and are from people who use the same type of device that you are.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Ratings
              TOverAllProductRating(),
              TRatingBarIndicator(rating: 3),
              Text('12, 611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// User Review list
              TUserReviewScreen(),
              TUserReviewScreen(),
              TUserReviewScreen(),
              TUserReviewScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
