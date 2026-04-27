import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;
  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  ThemeData get appTheme => Theme.of(this);
  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];

  bool get isKeyBoardOpen => MediaQuery.of(this).viewInsets.bottom > 0;
  double get keyboardPadding => MediaQuery.of(this).viewInsets.bottom;
  Brightness get appBrightness => MediaQuery.of(this).platformBrightness;

  double get textScaleFactor => MediaQuery.of(this).textScaler.scale(1);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get constXLowValue => 4;
  double get constLowValue => 8;
  double get constLow2xValue => 12;
  double get constMediumSValue => 14;
  double get constMediumValue => 15;
  double get constNormalValue => 16;
  double get constHighValue => 32;
  double get constExtraHighValue => 48;

  double get lowValue => height * 0.008;
  double get normalValue => height * 0.016;
  double get mediumValue => height * 0.032;
  double get highValue => height * 0.1;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}

extension DeviceOSExtension on BuildContext {
  bool get isAndroidDevice => Platform.isAndroid;
  bool get isIOSDevice => Platform.isIOS;
  bool get isWindowsDevice => Platform.isWindows;
  bool get isLinuxDevice => Platform.isLinux;
  bool get isMacOSDevice => Platform.isMacOS;
}

extension DurationExtension on BuildContext {
  Duration get durationLow => const Duration(milliseconds: 500);
  Duration get durationNormal => const Duration(seconds: 1);
  Duration get durationSlow => const Duration(seconds: 2);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get nonPadding => EdgeInsets.zero;
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingLow2x => EdgeInsets.all(constLow2xValue);
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);

  EdgeInsets get paddingConstNormal => EdgeInsets.all(constNormalValue);
  EdgeInsets get horizontalPaddingConstNormal =>
      EdgeInsets.symmetric(horizontal: constNormalValue);
  EdgeInsets get horizontalPaddingConstLow =>
      EdgeInsets.symmetric(horizontal: constLowValue);
  EdgeInsets get verticalPaddingConstMedium =>
      EdgeInsets.symmetric(vertical: constMediumValue);
  EdgeInsets get verticalPaddingConstNormal =>
      EdgeInsets.symmetric(vertical: constNormalValue);
  EdgeInsets get verticalPaddingConstLow =>
      EdgeInsets.symmetric(vertical: constLowValue);
  EdgeInsets get horizontalPaddingConstNormalVertical14 =>
      EdgeInsets.symmetric(horizontal: constNormalValue, vertical: constMediumSValue);
  EdgeInsets get onlyTopHorizontalPaddingConstNormal => EdgeInsets.only(
    top: constNormalValue,
    left: constNormalValue,
    right: constNormalValue,
  );

  EdgeInsets get horizontalPaddingLow =>
      EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get horizontalPaddingNormal =>
      EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get horizontalPaddingMedium =>
      EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get horizontalPaddingHigh =>
      EdgeInsets.symmetric(horizontal: highValue);

  EdgeInsets get verticalPaddingLow => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get verticalPaddingNormal =>
      EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get verticalPaddingMedium =>
      EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get verticalPaddingHigh =>
      EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get onlyLeftPaddingLow => EdgeInsets.only(left: lowValue);
  EdgeInsets get onlyLeftPaddingNormal => EdgeInsets.only(left: normalValue);
  EdgeInsets get onlyLeftPaddingMedium => EdgeInsets.only(left: mediumValue);
  EdgeInsets get onlyLeftPaddingHigh => EdgeInsets.only(left: highValue);

  EdgeInsets get onlyRightPaddingLow => EdgeInsets.only(right: lowValue);
  EdgeInsets get onlyRightPaddingNormal => EdgeInsets.only(right: normalValue);
  EdgeInsets get onlyRightPaddingMedium => EdgeInsets.only(right: mediumValue);
  EdgeInsets get onlyRightPaddingHigh => EdgeInsets.only(right: highValue);

  EdgeInsets get onlyBottomPaddingLow => EdgeInsets.only(bottom: lowValue);
  EdgeInsets get onlyBottomPaddingNormal =>
      EdgeInsets.only(bottom: normalValue);
  EdgeInsets get onlyBottomPaddingMedium =>
      EdgeInsets.only(bottom: mediumValue);
  EdgeInsets get onlyBottomPaddingHigh => EdgeInsets.only(bottom: highValue);

  EdgeInsets get onlyTopPaddingLow => EdgeInsets.only(top: lowValue);
  EdgeInsets get onlyTopPaddingNormal => EdgeInsets.only(top: normalValue);
  EdgeInsets get onlyTopPaddingMedium => EdgeInsets.only(top: mediumValue);
  EdgeInsets get onlyTopPaddingHigh => EdgeInsets.only(top: highValue);
}

extension SizedBoxExtension on BuildContext {
  Widget get emptySizedBox => const SizedBox();
  Widget get emptySizedWidthBoxLow => const SizedBox(width: 0.01);
  Widget get emptySizedWidthBoxLow3x => const SizedBox(width: 0.03);
  Widget get emptySizedWidthBoxNormal => const SizedBox(width: 0.05);
  Widget get emptySizedWidthBoxHigh => const SizedBox(width: 0.1);

  Widget get emptySizedHeightBoxLow => const SizedBox(height: 0.01);
  Widget get emptySizedHeightBoxLow3x => const SizedBox(height: 0.03);
  Widget get emptySizedHeightBoxNormal => const SizedBox(height: 0.05);
  Widget get emptySizedHeightBoxHigh => const SizedBox(height: 0.1);
}

extension RadiusExtension on BuildContext {
  Radius get lowRadius => Radius.circular(width * 0.02);
  Radius get normalRadius => Radius.circular(width * 0.05);
  Radius get highRadius => Radius.circular(width * 0.1);
}

extension BorderExtension on BuildContext {
  BorderRadius get normalBorderRadius =>
      BorderRadius.all(Radius.circular(width * 0.05));

  BorderRadius get mediumBorderRadius =>
      BorderRadius.all(Radius.circular(constMediumValue));

  BorderRadius get xLowBorderRadius =>
      BorderRadius.all(Radius.circular(constXLowValue));

  BorderRadius get lowBorderRadius =>
      BorderRadius.all(Radius.circular(width * 0.02));
  BorderRadius get highBorderRadius =>
      BorderRadius.all(Radius.circular(width * 0.1));

  RoundedRectangleBorder get roundedRectangleBorderLow =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(lowValue)),
      );

  RoundedRectangleBorder get roundedRectangleAllBorderNormal =>
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(normalValue));

  RoundedRectangleBorder get roundedRectangleBorderNormal =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(normalValue)),
      );

  RoundedRectangleBorder get roundedRectangleBorderMedium =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(mediumValue)),
      );

  RoundedRectangleBorder get roundedRectangleBorderHigh =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(highValue)),
      );
}

extension SizedBoxNum on BuildContext {
  SizedBox get sizedHeightBoxLow => const SizedBox(height: 8);
  SizedBox get sizedHeightBoxLow2x => const SizedBox(height: 12);
  SizedBox get sizedHeightBoxNormal => const SizedBox(height: 16);
  SizedBox get sizedHeightBoxMedium => const SizedBox(height: 24);
  SizedBox get sizedHeightBoxHigh => const SizedBox(height: 32);

  SizedBox get sizedWidthBoxLow => const SizedBox(width: 8);
  SizedBox get sizedWidthBoxLow2x => const SizedBox(width: 12);
  SizedBox get sizedWidthBoxNormal => const SizedBox(width: 16);
  SizedBox get sizedWidthBoxMedium => const SizedBox(width: 24);
  SizedBox get sizedWidthBoxHigh => const SizedBox(width: 32);
}

extension AuthRegex on String {
  bool get isValidEmail => RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  ).hasMatch(this);
  bool get isValidPassword =>
      length >= 16 &&
      RegExp(r'[A-Z]').hasMatch(this) &&
      RegExp(r'[0-9]').hasMatch(this);
}

extension AssetsIconExtension on BuildContext {
  String get ic01 => 'assets/icons/01.svg';
  String get ic02 => 'assets/icons/02.svg';
  String get ic03 => 'assets/icons/03.svg';
  String get ic04 => 'assets/icons/04.svg';
  String get ic05 => 'assets/icons/05.svg';
  String get ic06 => 'assets/icons/06.svg';
  String get ic07 => 'assets/icons/07.svg';
  String get ic08 => 'assets/icons/08.svg';
  String get ic09 => 'assets/icons/09.svg';
  String get ic10 => 'assets/icons/10.svg';
  String get ic11 => 'assets/icons/11.svg';
  String get ic12 => 'assets/icons/12.svg';
  String get ic13 => 'assets/icons/13.svg';
  String get ic14 => 'assets/icons/14.svg';
  String get ic15 => 'assets/icons/15.svg';
  String get ic16 => 'assets/icons/16.svg';
  String get ic17 => 'assets/icons/17.svg';
  String get ic18 => 'assets/icons/18.svg';
  String get ic19 => 'assets/icons/19.svg';
  String get ic20 => 'assets/icons/20.svg';
  String get ic21 => 'assets/icons/21.svg';
  String get ic22 => 'assets/icons/22.svg';
  String get ic23 => 'assets/icons/23.svg';
  String get ic24 => 'assets/icons/24.svg';
  String get ic25 => 'assets/icons/25.svg';
  String get ic26 => 'assets/icons/26.svg';
  String get ic27 => 'assets/icons/27.svg';
  String get ic28 => 'assets/icons/28.svg';
  String get ic29 => 'assets/icons/29.svg';
  String get ic30 => 'assets/icons/30.svg';
  String get ic31 => 'assets/icons/31.svg';
  String get ic32 => 'assets/icons/32.svg';
  String get ic33 => 'assets/icons/33.svg';
  String get ic34 => 'assets/icons/34.svg';
  String get ic35 => 'assets/icons/35.svg';
  String get ic36 => 'assets/icons/36.svg';
  String get ic37 => 'assets/icons/37.svg';
  String get ic38 => 'assets/icons/38.svg';
  String get ic39 => 'assets/icons/39.svg';
  String get ic40 => 'assets/icons/40.svg';
  String get ic41 => 'assets/icons/41.svg';
  String get ic42 => 'assets/icons/42.svg';
  String get ic43 => 'assets/icons/43.svg';
  String get ic44 => 'assets/icons/44.svg';
  String get ic45 => 'assets/icons/45.svg';
  String get ic46 => 'assets/icons/46.svg';
  String get ic47 => 'assets/icons/47.svg';
}

extension AppColorsExtension on BuildContext {
  Color get backgroundColor => const Color(0xFFFDFFFF);
  Color get cardColor => const Color(0xFFFFFFFF);
  Color get textColor => const Color(0xFF343434);
  Color get captionColor => const Color(0xFF979797);
  Color get buttonTextColor => const Color(0xFFFFFFFF);
  Color get primaryColor => const Color(0xFF5655B9);
  Color get secondaryColor => const Color(0xFFE9EEFF);
  Color get darkBlue => const Color(0xFF060F27);
  Color get grey => const Color(0xFF91949F);
  Color get lightGrey => const Color(0xFFEBEDF6);
  Color get mediumGrey => const Color(0xFFB2B7C7);

  List<Color> get linearGradient => const [
    Color(0xFF469FEF),
    Color(0xFF5C75F0),
    Color(0xFF6C56F0),
  ];
}

extension AppTextStylesExtension on BuildContext {
  TextStyle get title => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: textColor,
  );

  TextStyle get heading1 => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: textColor,
  );

  TextStyle get heading2 => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  TextStyle get paraLarge => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  TextStyle get paraLargeBold => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  TextStyle get paraMedium => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  TextStyle get paraMediumBold => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  TextStyle get paraSmall => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  TextStyle get paraSmallBold => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  TextStyle get caption => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: captionColor,
  );
  TextStyle get button => TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  TextStyle get tableHeader => const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
}

extension NavigationExtension on BuildContext {
  Future<dynamic> push(Widget page) {
    return Navigator.push(this, MaterialPageRoute(builder: (context) => page));
  }

  Future<dynamic> pushReplacement(Widget page) {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  Future<dynamic> pushAndRemoveUntil(
    Widget page, {
    bool Function(Route<dynamic>)? predicate,
  }) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      predicate ?? (route) => false,
    );
  }

  void pop() {
    Navigator.pop(this);
  }
}

extension DividerExtension on BuildContext {
  Divider get normalDivider => Divider(
    height: 1,
    color: grey.withValues(alpha: 0.2),
    indent: 16,
    endIndent: 16,
  );
}
