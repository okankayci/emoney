import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_money/core/data/contries_data.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/appbar_widget.dart';
import 'package:e_money/core/widgets/table_header_row.dart';

part 'widgets/exchange_rate_view_body.dart';
part 'widgets/exchange_rate_view_list.dart';
part 'widgets/exchange_rate_list_item.dart';

class ExchangeRateView extends StatelessWidget {
  const ExchangeRateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            //Header
            const AppBarWidget(title: "Exchange rate", showLeading: true),
            //Body
            ExchangeRateViewBody(),
          ],
        ),
      ),
    );
  }
}
