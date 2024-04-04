import 'dart:math';

import 'package:codeland_task/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const double _tinySize = 5.0;
const double _smallSize = 10.0;
const double _mediumSize = 25.0;
const double _largeSize = 50.0;
const double _massiveSize = 120.0;

const Widget horizontalSpaceTiny = SizedBox(width: _tinySize);
const Widget horizontalSpaceSmall = SizedBox(width: _smallSize);
const Widget horizontalSpaceMedium = SizedBox(width: _mediumSize);
const Widget horizontalSpaceLarge = SizedBox(width: _largeSize);

const Widget verticalSpaceTiny = SizedBox(height: _tinySize);
const Widget verticalSpaceSmall = SizedBox(height: _smallSize);
const Widget verticalSpaceMedium = SizedBox(height: _mediumSize);
const Widget verticalSpaceLarge = SizedBox(height: _largeSize);
const Widget verticalSpaceMassive = SizedBox(height: _massiveSize);

Widget verticalSpace(double height) => SizedBox(height: height.w);
Widget horizontalSpace(double width) => SizedBox(height: width.w);

EdgeInsets topPadding(double value) => EdgeInsets.only(top: value.w);
EdgeInsets bottomPadding(double value) => EdgeInsets.only(bottom: value.w);
EdgeInsets leftPadding(double value) => EdgeInsets.only(left: value.w);
EdgeInsets ringhtPadding(double value) => EdgeInsets.only(right: value.w);

EdgeInsets defaultPadding(double value) => EdgeInsets.all(value.w);

Widget spacedDivider = const Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

//Text Style
const TextStyle fontFamilyPoppinsRegular =
    TextStyle(fontFamily: 'Poppins-Regular');
const TextStyle fontFamilyPoppinsLight = TextStyle(fontFamily: 'Poppins-Light');
const TextStyle fontFamilyPoppinsMedium =
    TextStyle(fontFamily: 'Poppins-Medium');
const TextStyle fontFamilyPoppinsSemiBold =
    TextStyle(fontFamily: 'Poppins-SemiBold');
const TextStyle fontFamilyPoppinsLightItalic =
    TextStyle(fontFamily: 'Poppins-LightItalic');

extension TextStyleHelpers on TextStyle {
  TextStyle get size24 => copyWith(fontSize: 24.w);
  TextStyle get size20 => copyWith(fontSize: 20.w);
  TextStyle get size16 => copyWith(fontSize: 16.w);
  TextStyle get size12 => copyWith(fontSize: 12.w);
  TextStyle get size10 => copyWith(fontSize: 10.w);

  TextStyle get colorFF7709 => copyWith(color: const Color(0xFFFF7709));
  TextStyle get colorBlack => copyWith(color: Colors.black);
  TextStyle get colorWhite => copyWith(color: Colors.white);

  TextStyle get underline => copyWith(
      decoration: TextDecoration.underline,
      decorationColor: const Color(0xFFFF7709));
}
