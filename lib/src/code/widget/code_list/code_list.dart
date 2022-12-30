import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:sample/src/code/code_controller.dart';
import 'package:sample/src/code/entities/code.dart';
import 'package:sample/src/code/widget/code_list/code_list_item.dart';
import 'package:sample/src/core/theme/app_colors.dart';
import 'package:sample/src/core/utils/random_list_element_extension.dart';

class CodeList extends StatelessWidget {
  const CodeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CodeController>(
      builder: (context, controller, child) {
        var codeList = controller.codeList;

        if (codeList == null) {
          return _buildLoadingIndicator(context);
        }

        if (codeList.isEmpty) {
          return _buildEmptyListPlaceholder(context);
        }

        return _buildListView(context, codeList);
      },
    );
  }

  Widget _buildListView(BuildContext context, List<Code> list) {
    var colorList = list
        .map((code) => AppColors.codeListColors.getRandomElement())
        .toList();

    return Scrollbar(
      thickness: 4,
      thumbVisibility: true,
      child: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 19),
        itemBuilder: (context, index) => CodeListItem(
          item: list[index],
          colors: colorList[index],
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 14),
        itemCount: list.length,
      ),
    );
  }

  Widget _buildEmptyListPlaceholder(BuildContext context) {
    return Center(
      child: Text(AppLocalizations.of(context)!.codesEmptyListPlaceholderText),
    );
  }

  Widget _buildLoadingIndicator(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
