import 'package:flutter/material.dart';
import 'package:sample/src/code/entities/code.dart';
import 'package:sample/src/core/theme/app_colors.dart';
import 'package:sample/src/core/theme/assets_catalog.dart';
import 'package:sample/src/core/theme/theme_builder.dart';
import 'package:sample/src/core/utils/color_pair.dart';

class CodeListItem extends StatelessWidget {
  final Code item;
  final ColorPair colors;

  const CodeListItem({
    Key? key,
    required this.item,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.primaryColor,
        borderRadius: BorderRadius.circular(ThemeBuilder.defaultBorderRadius),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      child: Row(
        children: [
          _buildCodeElement(context),
          const SizedBox(width: 24),
          Text(
            item.name,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }

  Widget _buildCodeElement(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colors.secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(ThemeBuilder.smallBorderRadius),
        ),
      ),
      child: Image.asset(
        AssetsCatalog.icBottomBarCode,
        color: AppColors.black,
      ),
    );
  }
}
