import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/core/app_colors.dart';

class CategoryListItem extends StatelessWidget {
  final Category item;

  const CategoryListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var codeController = context.read<CodeController>();

    var isItemSelected = item == codeController.selectedCategory;

    return CupertinoButton(
      onPressed: () => codeController.selectCategory(item),
      padding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        decoration: BoxDecoration(
          color: isItemSelected ? AppColors.black : null,
          border: isItemSelected
              ? null
              : Border.all(width: 2, color: AppColors.gray),
          borderRadius: BorderRadius.circular(41),
        ),
        child: Center(
          child: Text(
            item.name,
            style: TextStyle(
              color: isItemSelected ? AppColors.white : AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
