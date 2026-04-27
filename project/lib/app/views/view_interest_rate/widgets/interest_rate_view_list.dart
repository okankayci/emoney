part of '../interest_rate_view.dart';

class InterestRateViewList extends StatelessWidget with InterestData {
  InterestRateViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: interestRates.length,
        separatorBuilder: (context, index) => context.normalDivider,
        itemBuilder: (context, index) {
          final item = interestRates[index];
          return InterestRateListItem(item: item);
        },
      ),
    );
  }
}
