import 'package:flutter/material.dart';
import 'package:sample/src/code/code_view.dart';
import 'package:sample/src/home/home_controller.dart';
import 'package:sample/src/home/widget/bottom_nav_bar.dart';
import 'package:sample/src/profile/profile_view.dart';
import 'package:sample/src/settings/settings_controller.dart';
import 'package:sample/src/settings/settings_service.dart';
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
              return SettingsView(
                  controller: SettingsController(SettingsService()));
            case 1:
              return CodeView();
            case 2:
              return const ProfileView();
          }

          return Container();
        },
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavBar(
          onSelectItem: controller.onSelectBottomItem,
        ),
      ),
    );
  }
}
