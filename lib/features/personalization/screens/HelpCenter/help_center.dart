import 'package:easy_mart/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Help Center',
            style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Header Section
            const Text(
              'FAQs (Frequently Asked Questions)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            /// FAQ Categories
            buildFAQCategory(
              categoryTitle: '📦 Orders & Tracking',
              faqs: [
                FAQItem(
                    question: 'How can I track my order?',
                    answer:
                        'You can track your order using the tracking ID provided in your order confirmation email.'),
                FAQItem(
                    question: 'What if my order is delayed?',
                    answer:
                        'We apologize for the delay. Please contact our support team with your order ID.'),
              ],
            ),
            buildFAQCategory(
              categoryTitle: '💳 Payments & Refunds',
              faqs: [
                FAQItem(
                    question: 'How can I request a refund?',
                    answer:
                        'Go to My Orders > Select the order > Request Refund.'),
                FAQItem(
                    question: 'What payment methods do you accept?',
                    answer:
                        'We accept Credit/Debit cards, UPI, Net Banking, and Wallets.'),
              ],
            ),
            buildFAQCategory(
              categoryTitle: '🚚 Shipping & Delivery',
              faqs: [
                FAQItem(
                    question: 'What are the shipping charges?',
                    answer:
                        'Shipping is free for orders above \$50. Below this, a \$5 fee applies.'),
                FAQItem(
                    question: 'Do you ship internationally?',
                    answer:
                        'Currently, we only deliver within selected regions. Check the delivery page for updates.'),
              ],
            ),
            buildFAQCategory(
              categoryTitle: '👤 Account Management',
              faqs: [
                FAQItem(
                    question: 'How do I reset my password?',
                    answer:
                        'Click on “Forgot Password” on the login screen and follow the steps.'),
                FAQItem(
                    question: 'How can I update my address?',
                    answer:
                        'Go to My Account > Addresses > Edit or Add New Address.'),
              ],
            ),
            buildFAQCategory(
              categoryTitle: '🛒 Product-Related Queries',
              faqs: [
                FAQItem(
                    question: 'Can I return a product?',
                    answer:
                        'Yes, you can return a product within 7 days of delivery.'),
                FAQItem(
                    question: 'How do I know if a product is in stock?',
                    answer:
                        'Products marked “In Stock” are available for purchase.'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Widget to build each FAQ Category
  Widget buildFAQCategory(
      {required String categoryTitle, required List<FAQItem> faqs}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Category Title
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            categoryTitle,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.blue,
            ),
          ),
        ),

        /// Expandable FAQ Items
        Card(
          elevation: 2,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: faqs.length,
            itemBuilder: (context, index) {
              return ExpansionTile(
                leading: const Icon(Iconsax.message_question),
                title: Text(
                  faqs[index].question,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Text(
                      faqs[index].answer,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  )
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

/// Model Class for FAQ Item
class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}
