import 'package:e_money/core/data/contries_data.dart';
import 'package:e_money/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExchangeRateListItem extends StatelessWidget with ContriesData {
  ExchangeRateListItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final country = countries[index];
    return Padding(
      padding: context.paddingNormal,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: context.xLowBorderRadius,
                  child: SvgPicture.asset(
                    country["flag_path"] as String,
                    fit: BoxFit.cover,
                  ),
                ),
                context.sizedWidthBoxLow2x,
                Text(country["name"] as String, style: context.title),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              country["buy"].toString(),
              textAlign: TextAlign.center,
              style: context.title,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              country["sell"].toString(),
              textAlign: TextAlign.right,
              style: context.title,
            ),
          ),
        ],
      ),
    );
  }
}
