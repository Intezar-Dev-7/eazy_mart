import 'package:easy_mart/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  // Notification states for each type
  bool _isGeneralEnabled = false;
  bool _isPriceDropEnabled = false;
  bool _isRestockEnabled = false;
  bool _isOrderStatusEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: const Text('Notifications'),
        showBackArrow: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildNotificationTile(
            icon: Iconsax.notification,
            title: 'Enable General Notifications',
            value: _isGeneralEnabled,
            onChanged: (value) => setState(() => _isGeneralEnabled = value),
          ),
          _buildNotificationTile(
            icon: Iconsax.discount_shape,
            title: 'Price Drop Alerts',
            value: _isPriceDropEnabled,
            onChanged: (value) => setState(() => _isPriceDropEnabled = value),
          ),
          _buildNotificationTile(
            icon: Iconsax.box,
            title: 'Restock Notifications',
            value: _isRestockEnabled,
            onChanged: (value) => setState(() => _isRestockEnabled = value),
          ),
          _buildNotificationTile(
            icon: Iconsax.truck,
            title: 'Order Status Updates',
            value: _isOrderStatusEnabled,
            onChanged: (value) => setState(() => _isOrderStatusEnabled = value),
          ),
        ],
      ),
    );
  }

  /// Custom reusable widget for SwitchListTile
  Widget _buildNotificationTile({
    required IconData icon,
    required String title,
    String? subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: subtitle != null
          ? Text(subtitle, style: Theme.of(context).textTheme.bodySmall)
          : null,
      trailing: Switch(
          value: value,
          activeColor: Theme.of(context).colorScheme.primary,
          onChanged: onChanged),
    );
  }
}
