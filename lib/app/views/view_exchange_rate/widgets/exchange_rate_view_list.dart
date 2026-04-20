part of '../exchange_rate_view.dart';

class ExchangeRateViewList extends StatelessWidget with ContriesData {
  ExchangeRateViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: countries.length,
        separatorBuilder: (context, index) => context.normalDivider,
        itemBuilder: (context, index) {
          return ExchangeRateListItem(index: index);
        },
      ),
    );
  }
}
