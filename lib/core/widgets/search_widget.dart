import 'package:e_money/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: context.paddingLow,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: context.cardColor,
          border: OutlineInputBorder(
            borderRadius: context.mediumBorderRadius,
            borderSide: BorderSide(color: context.grey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: context.mediumBorderRadius,
            borderSide: BorderSide(color: context.grey),
          ),
          hintText: "Search branch...",
          hintStyle: context.paraMedium,
          prefixIcon: Padding(
            padding: context.paddingLow2x,
            child: SvgPicture.asset(context.ic44),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(context.ic02, height: 16, width: 16),
          ),
        ),
      ),
    );
  }
}
