import 'package:flutter/material.dart';
import 'package:sample/src/core/app_colors.dart';
import 'package:sample/src/core/assets_catalog.dart';
import 'package:sample/src/home/widget/bottom_nav_bar_item.dart';

class BottomNavBar extends StatefulWidget {
  final void Function(int) onSelectItem;

  const BottomNavBar({
    Key? key,
    required this.onSelectItem,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.black,
      type: BottomNavigationBarType.shifting,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: BottomNavBarItem(
            title: 'Настройки',
            asset: AssetsCatalog.icBottomBarSettings,
            isSelected: _selectedIndex == 0,
          ),
          backgroundColor: AppColors.black,
          label: 'Настройки',
        ),
        BottomNavigationBarItem(
          icon: BottomNavBarItem(
            title: 'Мои коды',
            asset: AssetsCatalog.icBottomBarCode,
            isSelected: _selectedIndex == 1,
          ),
          label: 'Мои коды',
          backgroundColor: AppColors.black,
        ),
        BottomNavigationBarItem(
          icon: BottomNavBarItem(
            title: 'Профиль',
            asset: AssetsCatalog.icBottomBarProfile,
            isSelected: _selectedIndex == 2,
          ),
          label: 'Профиль',
          backgroundColor: AppColors.black,
        )
      ],
      currentIndex: _selectedIndex, //New
      onTap: _onItemTapped, //New
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    widget.onSelectItem(_selectedIndex);
  }
}
