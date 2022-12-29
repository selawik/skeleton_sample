import 'package:flutter/material.dart';
import 'package:sample/src/code/entities/code.dart';
import 'package:sample/src/core/app_colors.dart';
import 'package:sample/src/core/assets_catalog.dart';

class CodeList extends StatelessWidget {
  final List<Code> codeList;

  const CodeList({
    Key? key,
    required this.codeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (codeList.isEmpty) {
      return const Center(child: Text('Список кодов пуст'));
    }

    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 21),
      itemBuilder: (context, index) {
        return Container(
            decoration: BoxDecoration(
              color: AppColors.purple,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
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
      itemCount: codeList.length,
    );
  }
}
