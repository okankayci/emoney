import 'package:e_money/app/views/view_exchange_rate/widgets/exchange_rate_view_body.dart';
import 'package:flutter/material.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/appbar_widget.dart';

class ExchangeRateView extends StatelessWidget {
  const ExchangeRateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            //AppBar
            const AppBarWidget(title: "Exchange rate", showLeading: true),
            //Body
            ExchangeRateViewBody(),
          ],
        ),
      ),
    );
  }
}
