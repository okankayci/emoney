part of '../branch_view.dart';

class BrachViewBody extends StatelessWidget {
  const BrachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BrachViewMap(),
        context.sizedHeightBoxLow,
        Expanded(
          child: Container(
            margin: context.horizontalPaddingConstNormal,
            decoration: BoxDecoration(
              color: context.cardColor,
              boxShadow: [
                BoxShadow(
                  color: context.grey.withValues(alpha: 0.5),
                  blurRadius: 3,
                  offset: Offset(0, -2),
                ),
              ],
              borderRadius: context.mediumBorderRadius,
            ),
            child: Column(
              children: [
                // Sabit Arama Kutusu
                SearchWidget(),
                // Kaydırılabilir Liste
                BrachsList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
