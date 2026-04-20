part of '../branch_view.dart';

class BrachViewMap extends StatelessWidget {
  const BrachViewMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingConstNormal,
      child: Container(
        width: double.infinity,
        height: 320,
        decoration: BoxDecoration(
          color: context.lightGrey,
          borderRadius: context.mediumBorderRadius,
        ),

        child: Padding(
          padding: context.paddingHigh,
          child: SvgPicture.asset(
            context.ic36,
            colorFilter: ColorFilter.mode(
              context.primaryColor,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
