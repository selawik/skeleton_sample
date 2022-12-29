import 'package:flutter/material.dart';
import 'package:sample/src/code/entities/category.dart';
import 'package:sample/src/core/app_colors.dart';

class CategoryList extends StatelessWidget {
  final List<Category> categoryList;

  const CategoryList({Key? key, required this.categoryList}) : super(key: key);

  Widget _buildListItem(BuildContext context, Category item) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: AppColors.gray),
        borderRadius: BorderRadius.circular(41),
      ),
      child: Center(
        child: Text(item.name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) =>
            _buildListItem(context, categoryList[index]),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
      ),
    );
  }
}
