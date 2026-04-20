import 'package:flutter/material.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/appbar_widget.dart';
import 'package:e_money/core/data/interest_data.dart';
import 'package:e_money/core/widgets/table_header_row.dart';

part 'widgets/interest_rate_view_body.dart';
part 'widgets/interest_rate_view_list.dart';
part 'widgets/interest_rate_list_item.dart';

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
