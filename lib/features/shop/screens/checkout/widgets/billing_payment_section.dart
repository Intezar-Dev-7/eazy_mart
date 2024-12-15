import 'package:easy_mart/common/styles/rounded_container.dart';
import 'package:easy_mart/common/widgets/texts/section_heading.dart';
import 'package:easy_mart/utils/constants/colors.dart';
import 'package:easy_mart/utils/constants/image_strings.dart';
import 'package:easy_mart/utils/constants/sizes.dart';
import 'package:easy_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBillingPaymentSection extends StatefulWidget {
  const TBillingPaymentSection({super.key});

  @override
  State<TBillingPaymentSection> createState() => _TBillingPaymentSectionState();
}

class _TBillingPaymentSectionState extends State<TBillingPaymentSection> {
  // List of payment methods
  final List<Map<String, dynamic>> _paymentMethods = [
    {'name': 'PayPal', 'image': TImages.paypal},
    {'name': 'Credit Card', 'image': TImages.creditCard},
    {'name': 'Google Pay', 'image': TImages.googlePay},
    {'name': 'Apple Pay', 'image': TImages.applePay},
    {'name': 'Master Card', 'image': TImages.masterCard},
    {'name': 'Paystack', 'image': TImages.paystack},
    {'name': 'Paytm', 'image': TImages.paytm},
    {'name': 'Visa', 'image': TImages.visa},
  ];

  // Selected payment method
  Map<String, dynamic> _selectedPayment = {
    'name': 'PayPal',
    'image': TImages.paypal
  };

  // Function to show payment options
  void _showPaymentOptions() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ListView.builder(
          itemCount: _paymentMethods.length,
          itemBuilder: (context, index) {
            final payment = _paymentMethods[index];
            return ListTile(
              leading: Image.asset(payment['image'], width: 40, height: 40),
              title: Text(payment['name']),
              onTap: () {
                setState(() {
                  _selectedPayment = payment; // Update the selected payment
                });
                Navigator.pop(context); // Close the modal
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        // Heading Section
        TSectionHeading(
          title: 'Payment Method',
          buttonTitle: 'Change',
          onPressed: _showPaymentOptions, // Show payment options
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        // Selected Payment Method
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 33,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image(
                image: AssetImage(_selectedPayment['image']),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text(
              _selectedPayment['name'],
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        )
      ],
    );
  }
}
