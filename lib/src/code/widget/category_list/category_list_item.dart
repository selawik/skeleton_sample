import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/core/theme/app_colors.dart';

class CategoryListItem extends StatelessWidget {
  final Category category;

  const CategoryListItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var codeController = context.read<CodeController>();

    var isItemSelected = category == codeController.selectedCategory;

    var textStyle = Theme.of(context).textTheme.subtitle1?.copyWith(
          color: isItemSelected ? AppColors.white : AppColors.black,
          fontWeight: FontWeight.w400,
        );

    return CupertinoButton(
      onPressed: () => codeController.selectCategory(category),
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
            getCategoryName(context, category),
            style: textStyle,
          ),
        ),
      ),
    );
  }

  static String getCategoryName(BuildContext context, Category category) {
    switch (category) {
      case Category.all:
        return AppLocalizations.of(context)!.categoryAll;
      case Category.favorite:
        return AppLocalizations.of(context)!.categoryFavorites;
      case Category.car:
        return AppLocalizations.of(context)!.categoryCar;
      case Category.home:
        return AppLocalizations.of(context)!.categoryHome;
      case Category.kids:
        return AppLocalizations.of(context)!.categoryKids;
      case Category.newCategory:
        return AppLocalizations.of(context)!.categoryNew;
    }
  }
}
