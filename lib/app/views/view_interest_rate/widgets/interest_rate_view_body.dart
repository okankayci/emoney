part of '../interest_rate_view.dart';

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
