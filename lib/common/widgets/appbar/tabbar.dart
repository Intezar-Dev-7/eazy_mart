import 'package:easy_mart/utils/constants/colors.dart';
import 'package:easy_mart/utils/device/device_utility.dart';
import 'package:easy_mart/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you dont want to add the background color to tabs you have to wrap them in material widget
  /// To Do that we need [PreferredSized] Widget and thats why craeted custom class . [PreferredSizedWidget]
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? TColors.black : TColors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 1),
        child: Center(
          child: TabBar(
            tabs: tabs,
            isScrollable: true,
            indicatorColor: TColors.primary,
            labelColor: dark ? TColors.white : TColors.primary,
            unselectedLabelColor: TColors.darkGrey,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
