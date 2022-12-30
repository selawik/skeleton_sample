import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sample/src/core/theme/app_colors.dart';
import 'package:sample/src/core/theme/assets_catalog.dart';
import 'package:sample/src/core/theme/theme_builder.dart';
import 'package:sample/src/home/entities/bottom_navigation_item.dart';
import 'package:sample/src/home/home_controller.dart';
import 'package:sample/src/home/widget/bottom_nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = context.read<HomeController>();

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(ThemeBuilder.defaultBorderRadius),
        topRight: Radius.circular(ThemeBuilder.defaultBorderRadius),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: _buildBottomItems(context, controller),
        currentIndex: controller.selectedItem.index, //New
        onTap: (index) => _onItemTapped(index, controller), //New
      ),
    );
  }

  List<BottomNavigationBarItem> _buildBottomItems(
    BuildContext context,
    HomeController controller,
  ) {
    return [
      BottomNavigationBarItem(
        icon: BottomNavBarItem(
          title: AppLocalizations.of(context)!.bottomBarSettingsTitle,
          asset: AssetsCatalog.icBottomBarSettings,
          isSelected: controller.selectedItem.isSettings,
        ),
        backgroundColor: AppColors.black,
        label: AppLocalizations.of(context)!.bottomBarSettingsTitle,
      ),
      BottomNavigationBarItem(
        icon: BottomNavBarItem(
          title: AppLocalizations.of(context)!.bottomBarCodesTitle,
          asset: AssetsCatalog.icBottomBarCode,
          isSelected: controller.selectedItem.isCodes,
        ),
        backgroundColor: AppColors.black,
        label: AppLocalizations.of(context)!.bottomBarCodesTitle,
      ),
      BottomNavigationBarItem(
        icon: BottomNavBarItem(
          title: AppLocalizations.of(context)!.bottomBarProfileTitle,
          asset: AssetsCatalog.icBottomBarProfile,
          isSelected: controller.selectedItem.isProfile,
        ),
        backgroundColor: AppColors.black,
        label: AppLocalizations.of(context)!.bottomBarProfileTitle,
      )
    ];
  }

  void _onItemTapped(int index, HomeController controller) {
    controller.onSelectBottomItem(BottomNavigationItem.values[index]);
  }
}
