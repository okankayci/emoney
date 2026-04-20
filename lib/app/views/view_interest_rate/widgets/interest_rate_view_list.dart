import 'package:e_money/app/views/view_interest_rate/widgets/interest_rate_list_item.dart';
import 'package:e_money/core/data/interest_data.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

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
