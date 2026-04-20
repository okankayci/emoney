import 'package:e_money/app/views/view_branch/branch_view.dart';
import 'package:e_money/app/views/view_exchange_rate/exchange_rate_view.dart';
import 'package:e_money/app/views/view_interest_rate/interest_rate_view.dart';
import 'package:e_money/app/views/view_search/widgets/search_screen_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:e_money/core/extensions/context_extension.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SearchScreenCardWidget(
              title: "Branch",
              subtitle: "Search for branch",
              image: "assets/images/472.svg",
              onTap: () {
                context.push(BranchView());
              },
            ),
            SearchScreenCardWidget(
              title: "Interest rate",
              subtitle: "Search for interest rate",
              image: "assets/images/477.svg",
              onTap: () {
                context.push(InterestRateView());
              },
            ),
            SearchScreenCardWidget(
              title: "Exchange rate",
              subtitle: "Search for exchange rate",
              image: "assets/images/478.svg",
              onTap: () {
                context.push(ExchangeRateView());
              },
            ),
            SearchScreenCardWidget(
              title: "Exchange",
              subtitle: "Exchange amount of money",
              image: "assets/images/490.svg",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
