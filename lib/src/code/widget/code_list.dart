import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/core/app_colors.dart';
import 'package:sample/src/core/assets_catalog.dart';

class CodeList extends StatelessWidget {
  const CodeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CodeController>(builder: (context, controller, child) {
      var codeList = controller.codeList;

      if (codeList == null) {
        return const Center(child: CircularProgressIndicator());
      }

      if (codeList.isEmpty) {
        return const Center(child: Text('Список кодов пуст'));
      }

      return Scrollbar(
        thickness: 4,
        thumbVisibility: true,
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 21),
          itemBuilder: (context, index) {
            return Container(
                decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        AssetsCatalog.icBottomBarCode,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(width: 24),
                    Text(codeList[index].name),
                  ],
                ));
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 14);
          },
          itemCount: controller.codeList!.length,
        ),
      );
    });
  }
}
