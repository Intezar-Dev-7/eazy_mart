import 'package:easy_mart/common/widgets/appbar/appbar.dart';
import 'package:easy_mart/features/shop/screens/order/widget/orders_list.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: TAppBar(
          title: Text('My Orders',
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// Orders
        child: TOrdersList(),
      ),
    );
  }
}
