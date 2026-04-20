import 'package:e_money/app/views/view_branch/widget/brach_view_map.dart';
import 'package:e_money/app/views/view_branch/widget/brachs_list.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class BrachViewBody extends StatelessWidget {
  const BrachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BrachViewMap(),
        context.sizedHeightBoxLow,
        Expanded(
          child: Container(
            margin: context.horizontalPaddingConstNormal,
            decoration: BoxDecoration(
              color: context.cardColor,
              boxShadow: [
                BoxShadow(
                  color: context.grey.withValues(alpha: 0.5),
                  blurRadius: 3,
                  offset: Offset(0, -2),
                ),
              ],
              borderRadius: context.mediumBorderRadius,
            ),
            child: Column(
              children: [
                // Sabit Arama Kutusu
                SearchWidget(),
                // Kaydırılabilir Liste
                BrachsList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
