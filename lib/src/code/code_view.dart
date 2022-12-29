import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/mock_code_service.dart';
import 'package:sample/src/code/widget/category_list/category_list.dart';
import 'package:sample/src/code/widget/code_list/code_list.dart';
import 'package:sample/src/core/app_colors.dart';
import 'package:sample/src/core/assets_catalog.dart';

class CodeView extends StatelessWidget {
  final CodeController controller = CodeController(service: MockCodeService());

  CodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        titleSpacing: 20,
        title: _buildTitle(context),
        centerTitle: false,
        backgroundColor: AppColors.white,
        elevation: 0,
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
        child: _buildNotificationIcon(context),
        onPressed: () {},
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
          child: Container(
            height: 8,
            width: 8,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.red,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      'Мои коды',
      style: Theme.of(context).textTheme.headline1,
    );
  }
}
