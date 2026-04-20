import 'package:e_money/app/views/view_interest_rate/widgets/interest_rate_view_list.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/table_header_row.dart';
import 'package:flutter/material.dart';

class InterestRateViewBody extends StatelessWidget {
  const InterestRateViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: context.horizontalPaddingConstNormal,
        child: Column(
          children: [
            // Header Satırı
            const TableHeaderRow(
              firstTitle: "Interest kind",
              secondTitle: "Deposit",
              thirdTitle: "Rate",
            ),
            // Kaydırılabilir Liste
            InterestRateViewList(),
          ],
        ),
      ),
    );
  }
}
