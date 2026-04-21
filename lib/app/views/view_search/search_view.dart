import 'package:e_money/app/views/view_branch/branch_view.dart';
import 'package:e_money/app/views/view_exchange_rate/exchange_rate_view.dart';
import 'package:e_money/app/views/view_interest_rate/interest_rate_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/appbar_widget.dart';

part 'widgets/search_view_body.dart';
part 'widgets/search_screen_card_widget.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,

      body: SafeArea(
        child: Column(
          children: [
            //Header
            AppBarWidget(title: "Search", showLeading: false),

            //Body
            SearchViewBody(),
          ],
        ),
      ),
    );
  }
}
