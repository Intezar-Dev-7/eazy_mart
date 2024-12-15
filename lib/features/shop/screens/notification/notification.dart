import 'package:easy_mart/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool _isNotificationEnabled = false;

  void _toggleNotification(bool value) {
    setState(() => _isNotificationEnabled = value);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(_isNotificationEnabled
            ? 'Notification Enabled'
            : 'Notification Disabled'),
        duration: const Duration(seconds: 1)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
          title: Text('Notification',
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: ListTile(
        title: Text(
          'Enable Notifications',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        trailing: Switch(
            value: _isNotificationEnabled,
            activeColor: Theme.of(context).colorScheme.primary,
            onChanged: _toggleNotification),
      ),
    );
  }
}
