import 'dart:io'; // For checking the platform and Internet address
import 'package:flutter/foundation.dart'; // For checking the platform
import 'package:flutter/material.dart'; // For UI components
import 'package:flutter/services.dart'; // For controlling system UI (e.g., status bar, haptic feedback)
import 'package:get/get.dart';
// For state management and other utilities
import 'package:url_launcher/url_launcher_string.dart'; // For launching URLs

// Utility class for device-related operations
class TDeviceUtils {
  // Hide the keyboard by unfocusing any text fields
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  // Set the status bar color
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  // Check if the device is in landscape orientation by checking the view insets (keyboard height)
  static bool isLandScapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0; // No keyboard visible means landscape
  }

  // Check if the device is in portrait orientation by checking the view insets (keyboard height)
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0; // Keyboard visible means portrait
  }

  // Enable or disable full-screen mode
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  // Get the screen height using GetX's context
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  // Get the screen width using the provided context
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Get the device's pixel ratio using GetX's context
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  // Get the status bar height
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  // Get the height of the bottom navigation bar (constant height)
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  // Get the height of the app bar (constant height)
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  // Get the height of the keyboard
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  // Check if the keyboard is visible by checking the bottom view insets
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  // Check if the device is a physical device (not a simulator/emulator)
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  // Provide haptic feedback with vibration, delayed by the given duration
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  // Set the preferred screen orientations
  static Future<void> setPreferredOrientations(
      List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  // Hide the status bar
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  // Show the status bar
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  // Check if the device has an active internet connection by looking up an address
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  // Check if the platform is iOS
  static bool isIOS() {
    return Platform.isIOS;
  }

  // Check if the platform is Android
  static bool isAndriod() {
    return Platform.isAndroid;
  }

  // Launch a URL in the default browser, or throw an error if it fails
  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'could not launch $url';
    }
  }
}
