import 'package:easy_mart/common/widgets/products/cart/add_remove_button.dart';
import 'package:easy_mart/common/widgets/products/cart/cart_item.dart';
import 'package:easy_mart/common/widgets/texts/product_price_text.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 2,
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwSections),
        itemBuilder: (_, index) => Column(
              children: [
                /// Cart Item
                TCartItem(),
                if (showAddRemoveButton)
                  const SizedBox(height: TSizes.spaceBtwItems),
                if (showAddRemoveButton)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Xtra space
                          SizedBox(width: 70),

                          /// Add Remove button
                          TProductQuantityWithAddAndRemoveButton(),
                        ],
                      ),
                      TProductPriceText(price: '256'),
                    ],
                  )
              ],
            ));
  }
}
