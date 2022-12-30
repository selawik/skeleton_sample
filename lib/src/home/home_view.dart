import 'package:flutter/material.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/code_view.dart';
import 'package:sample/src/core/di/injection.dart' as di;
import 'package:sample/src/core/theme/theme_builder.dart';
import 'package:sample/src/home/entities/bottom_navigation_item.dart';
import 'package:sample/src/home/home_controller.dart';
import 'package:sample/src/home/widget/bottom_nav_bar.dart';
import 'package:sample/src/profile/profile_view.dart';
import 'package:sample/src/settings/settings_view.dart';

class HomeView extends StatelessWidget {
  final HomeController controller;

  const HomeView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: controller,
        builder: _buildBody,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(ThemeBuilder.defaultBorderRadius),
          topRight: Radius.circular(ThemeBuilder.defaultBorderRadius),
        ),
        child: BottomNavBar(
          onSelectItem: controller.onSelectBottomItem,
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, Widget? child) {
    switch (controller.itemIndex) {
      case BottomNavigationItem.settings:
        return const SettingsView();
      case BottomNavigationItem.codes:
        return CodeView(controller: di.locator<CodeController>());
      case BottomNavigationItem.profile:
        return const ProfileView();
    }
  }
}
