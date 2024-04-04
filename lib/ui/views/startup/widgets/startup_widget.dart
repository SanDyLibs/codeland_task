import 'package:codeland_task/ui/common/app_colors.dart';
import 'package:codeland_task/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartupWidget extends StatelessWidget {
  const StartupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 224.w,
      height: 320.w,
      decoration: BoxDecoration(
          color: kcWhite,
          borderRadius: BorderRadius.circular(63.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              spreadRadius: 1.w,
              offset: const Offset(1, 10),
            )
          ]),
      child: Column(
        children: [
          verticalSpace(40),
          Image.asset(
            'assets/images/codeland_logo.png',
            height: 180.w,
            width: 180.w,
          ),
          Image.asset(
            'assets/images/codeland_text_logo.png',
            width: 114.w,
            height: 91.w,
          ),
        ],
      ),
    );
  }
}
