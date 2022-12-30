import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/widget/category_list/category_list.dart';
import 'package:sample/src/code/widget/code_list/code_list.dart';
import 'package:sample/src/core/theme/app_colors.dart';
import 'package:sample/src/core/theme/assets_catalog.dart';

class CodeView extends StatelessWidget {
  final CodeController controller;

  const CodeView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.codesViewTitle),
        actions: _buildActions(context),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: controller,
      builder: (context, child) {
        return Column(
          children: const [
            SizedBox(height: 37),
            CategoryList(),
            SizedBox(height: 19),
            Expanded(child: CodeList()),
          ],
        );
      },
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: _onNotificationPressed,
        child: _buildNotificationIcon(context),
      ),
      const SizedBox(width: 24),
    ];
  }

  Widget _buildNotificationIcon(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AssetsCatalog.icNotifications),
        Positioned(
          top: 3,
          right: 4,
          child: _buildNotificationIndicator(context),
        )
      ],
    );
  }

  Widget _buildNotificationIndicator(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.red,
      ),
    );
  }

  void _onNotificationPressed() {
    ///TODO implement
  }
}
