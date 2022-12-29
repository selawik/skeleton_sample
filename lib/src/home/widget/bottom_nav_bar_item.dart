import 'package:flutter/material.dart';
import 'package:sample/src/core/app_colors.dart';

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    Key? key,
    required this.title,
    required this.asset,
    required this.isSelected,
  }) : super(key: key);

  final String title;
  final String asset;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isSelected ? AppColors.purple : null,
      ),
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
            Flexible(child: Text(title)),
          ]
        ],
      ),
    );
  }
}
