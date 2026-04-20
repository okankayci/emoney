import 'package:e_money/app/views/view_exchange_rate/widgets/exchange_rate_view_list.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/table_header_row.dart';
import 'package:flutter/material.dart';

class ExchangeRateViewBody extends StatelessWidget {
  const ExchangeRateViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: context.horizontalPaddingConstNormal,
        child: Column(
          children: [
            // Header Satırı
            const TableHeaderRow(
              firstTitle: "Country",
              secondTitle: "Buy",
              thirdTitle: "Sell",
            ),
            // Liste
            ExchangeRateViewList(),
          ],
        ),
      ),
    );
  }
}
