import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/code_view.dart';
import 'package:sample/src/core/di/injection.dart' as di;
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
    return ChangeNotifierProvider.value(
      value: controller,
      child: Consumer<HomeController>(
        builder: (context, controller, child) {
          return Scaffold(
            body: _buildBody(context),
            bottomNavigationBar: BottomNavBar(),
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    switch (controller.selectedItem) {
      case BottomNavigationItem.settings:
        return const SettingsView();
      case BottomNavigationItem.codes:
        return CodeView(controller: di.locator<CodeController>());
      case BottomNavigationItem.profile:
        return const ProfileView();
    }
  }
}
