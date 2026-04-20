import 'package:e_money/app/views/view_exchange_rate/widgets/exchange_rate_list_item.dart';
import 'package:e_money/core/data/contries_data.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

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
