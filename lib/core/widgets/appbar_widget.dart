import 'package:e_money/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title, this.showLeading = true});
  final String title;
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        showLeading
            ? IconButton(
                onPressed: () => context.pop(),
                icon: SvgPicture.asset(context.ic39),
              )
            : context.sizedWidthBoxLow2x,
        context.sizedWidthBoxLow,
        Text(title, style: context.heading1),
      ],
    );
  }
}
