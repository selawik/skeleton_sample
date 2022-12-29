import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/entities/code.dart';
import 'package:sample/src/code/mock_code_service.dart';
import 'package:sample/src/code/widget/category_list.dart';
import 'package:sample/src/code/widget/code_list.dart';
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
    return Column(
      children: [
        const SizedBox(height: 37),
        CategoryList(
          selectedItem: controller.selectedCategory,
          categoryList: controller.categoryList,
          onCategorySelected: controller.selectCategory,
        ),
        const SizedBox(height: 36),
        Expanded(
          child: FutureBuilder<List<Code>>(
            future: controller.getCodes(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? CodeList(codeList: snapshot.data!)
                  : const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      CupertinoButton(
        padding: EdgeInsets.zero,
        child: Image.asset(AssetsCatalog.icNotifications),
        onPressed: () {},
      ),
      const SizedBox(
        width: 24,
      ),
    ];
  }

  Widget _buildTitle(BuildContext context) {
    return const Text(
      'Мои коды',
      style: TextStyle(color: AppColors.black, fontSize: 24),
    );
  }
}
