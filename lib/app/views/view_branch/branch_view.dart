import 'package:e_money/app/views/view_branch/widget/brach_view_body.dart';
import 'package:flutter/material.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:e_money/core/widgets/appbar_widget.dart';

class BranchView extends StatelessWidget {
  const BranchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,

      body: SafeArea(
        child: Column(
          children: [
            //AppBar
            AppBarWidget(title: "Branch", showLeading: true),

            //Body
            Expanded(child: BrachViewBody()),
          ],
        ),
      ),
    );
  }
}
