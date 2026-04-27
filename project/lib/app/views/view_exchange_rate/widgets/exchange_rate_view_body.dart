part of '../exchange_rate_view.dart';

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
            // Exchange Rate Listesi
            ExchangeRateViewList(),
          ],
        ),
      ),
    );
  }
}
