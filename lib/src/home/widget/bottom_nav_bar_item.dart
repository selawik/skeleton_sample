import 'package:flutter/material.dart';
import 'package:sample/src/core/theme/app_colors.dart';

class BottomNavBarItem extends StatelessWidget {
  final String title;
  final String asset;
  final bool isSelected;

  const BottomNavBarItem({
    Key? key,
    required this.title,
    required this.asset,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: itemDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            asset,
            color: isSelected ? AppColors.black : null,
          ),
          if (isSelected) ...[
            const SizedBox(width: 11),
            Flexible(
              child: Text(
                title,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ]
        ],
      ),
    );
  }

  BoxDecoration get itemDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isSelected ? AppColors.darkPurple : null,
      );
}
