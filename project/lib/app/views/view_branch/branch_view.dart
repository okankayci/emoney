import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_money/core/data/brach_data.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/appbar_widget.dart';
import 'package:e_money/core/widgets/search_widget.dart';

part 'widget/brach_view_body.dart';
part 'widget/brach_view_map.dart';
part 'widget/brachs_list.dart';

class BranchView extends StatelessWidget {
  const BranchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,

      body: SafeArea(
        child: Column(
          children: [
            //Header
            AppBarWidget(title: "Branch", showLeading: true),

            //Body
            Expanded(child: BrachViewBody()),
          ],
        ),
      ),
    );
  }
}
