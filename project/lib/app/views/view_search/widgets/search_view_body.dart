part of '../search_view.dart';

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
