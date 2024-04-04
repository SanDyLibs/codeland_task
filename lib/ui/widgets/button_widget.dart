import 'package:codeland_task/ui/common/app_colors.dart';
import 'package:codeland_task/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    this.height,
    this.width,
    this.onTap,
    this.title,
    this.fontSize,
    this.color,
    this.fontColor,
    Key? key,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Function()? onTap;
  final String? title;
  final double? fontSize;
  final Color? color;
  final Color? fontColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: width ?? double.infinity,
          height: height ?? 56.w,
          decoration: BoxDecoration(color: color ?? kcPrimaryColor, borderRadius: BorderRadius.circular(12.w), boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              spreadRadius: 1.w,
              offset: const Offset(1, 10),
            )
          ]),
          child: Center(
            child: Text(
              title ?? 'LogIn',
              style: fontFamilyPoppinsMedium.size24.colorWhite.copyWith(fontSize: fontSize, color: fontColor),
            ),
          )),
    );
  }
}
