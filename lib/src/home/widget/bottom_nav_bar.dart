import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sample/src/core/theme/app_colors.dart';
import 'package:sample/src/core/theme/assets_catalog.dart';
import 'package:sample/src/home/entities/bottom_navigation_item.dart';
import 'package:sample/src/home/widget/bottom_nav_bar_item.dart';

class BottomNavBar extends StatefulWidget {
  final void Function(BottomNavigationItem) onSelectItem;

  const BottomNavBar({
    Key? key,
    required this.onSelectItem,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  BottomNavigationItem _selectedItem = BottomNavigationItem.codes;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: BottomNavBarItem(
            title: AppLocalizations.of(context)!.bottomBarSettingsTitle,
            asset: AssetsCatalog.icBottomBarSettings,
            isSelected: _selectedItem.isSettings,
          ),
          backgroundColor: AppColors.black,
          label: AppLocalizations.of(context)!.bottomBarSettingsTitle,
        ),
        BottomNavigationBarItem(
          icon: BottomNavBarItem(
            title: AppLocalizations.of(context)!.bottomBarCodesTitle,
            asset: AssetsCatalog.icBottomBarCode,
            isSelected: _selectedItem.isCodes,
          ),
          backgroundColor: AppColors.black,
          label: AppLocalizations.of(context)!.bottomBarCodesTitle,
        ),
        BottomNavigationBarItem(
          icon: BottomNavBarItem(
            title: AppLocalizations.of(context)!.bottomBarProfileTitle,
            asset: AssetsCatalog.icBottomBarProfile,
            isSelected: _selectedItem.isProfile,
          ),
          backgroundColor: AppColors.black,
          label: AppLocalizations.of(context)!.bottomBarProfileTitle,
        )
      ],
      currentIndex: _selectedItem.index, //New
      onTap: _onItemTapped, //New
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = BottomNavigationItem.values[index];
    });

    widget.onSelectItem(_selectedItem);
  }
}
