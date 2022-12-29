import 'package:flutter/material.dart';
import 'package:sample/src/code/code_view.dart';
import 'package:sample/src/core/theme_builder.dart';
import 'package:sample/src/home/home_controller.dart';
import 'package:sample/src/home/widget/bottom_nav_bar.dart';
import 'package:sample/src/profile/profile_view.dart';
import 'package:sample/src/settings/settings_view.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          switch (controller.itemIndex) {
            case 0:
              return const SettingsView();
            case 1:
              return CodeView();
            case 2:
              return const ProfileView();
          }

          return Container();
        },
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
}
