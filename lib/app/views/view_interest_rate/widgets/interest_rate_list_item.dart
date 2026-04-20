part of '../interest_rate_view.dart';

class InterestRateListItem extends StatelessWidget {
  final Map<String, String> item;

  const InterestRateListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingConstNormalVertical14,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              item["kind"] as String,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              item["deposit"] as String,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              item["rate"] as String,
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.indigo[900],
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
