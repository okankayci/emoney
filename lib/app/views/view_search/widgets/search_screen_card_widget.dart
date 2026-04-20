import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_money/core/extensions/context_extension.dart';

class SearchScreenCardWidget extends StatelessWidget {
  const SearchScreenCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
  });
  final String title;
  final String subtitle;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: context.onlyTopHorizontalPaddingConstNormal,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: context.grey.withValues(alpha: 0.2),
            blurRadius: 30,
            offset: Offset(0, 5),
          ),
        ],
        color: context.cardColor,
        borderRadius: context.mediumBorderRadius,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: context.mediumBorderRadius,
          onTap: onTap,
          child: Padding(
            padding: context.paddingConstNormal,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: context.title),
                    Text(subtitle, style: context.caption),
                  ],
                ),
                SvgPicture.asset(image),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
