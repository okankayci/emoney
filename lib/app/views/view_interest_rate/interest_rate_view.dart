import 'package:e_money/app/views/view_interest_rate/widgets/interest_rate_view_body.dart';
import 'package:flutter/material.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/appbar_widget.dart';

class InterestRateView extends StatelessWidget {
  const InterestRateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            //AppBar
            const AppBarWidget(title: "Interest Rate", showLeading: true),

            //Body
            InterestRateViewBody(),
          ],
        ),
      ),
    );
  }
}
