import 'package:e_money/core/data/brach_data.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BrachsList extends StatelessWidget with BrachData {
  BrachsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: branches.length,
        separatorBuilder: (context, index) => context.normalDivider,
        itemBuilder: (context, index) {
          final branch = branches[index];
          return ListTile(
            leading: SvgPicture.asset(
              context.ic36,
              colorFilter: ColorFilter.mode(
                context.primaryColor,
                BlendMode.srcIn,
              ),
            ),
            title: Text(branch['name']!, style: context.title),
            trailing: Text(branch['distance']!, style: context.caption),
          );
        },
      ),
    );
  }
}
