import 'package:flutter/material.dart';
import 'package:sample/src/code/entities/code.dart';
import 'package:sample/src/core/app_colors.dart';
import 'package:sample/src/core/assets_catalog.dart';
import 'package:sample/src/core/theme_builder.dart';

class CodeListItem extends StatelessWidget {
  final Code item;

  const CodeListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.purple,
        borderRadius: BorderRadius.circular(ThemeBuilder.defaultBorderRadius),
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
          Text(
            item.name,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
