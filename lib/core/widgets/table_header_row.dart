import 'package:e_money/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class TableHeaderRow extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  final String thirdTitle;

  const TableHeaderRow({
    super.key,
    required this.firstTitle,
    required this.secondTitle,
    required this.thirdTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow2x,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(firstTitle, style: context.tableHeader),
          ),
          Expanded(
            flex: 1,
            child: Text(
              secondTitle,
              textAlign: TextAlign.center,
              style: context.tableHeader,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              thirdTitle,
              textAlign: TextAlign.right,
              style: context.tableHeader,
            ),
          ),
        ],
      ),
    );
  }
}
