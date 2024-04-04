import 'package:codeland_task/ui/common/app_colors.dart';
import 'package:codeland_task/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    this.labelText,
    this.onSaved,
    this.onChanged,
    this.validator,
    this.textInputAction,
    this.height,
    this.isPassword = false,
    Key? key,
  }) : super(key: key);

  final String? labelText;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final bool isPassword;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 56.w,
      child: TextFormField(
        style: fontFamilyPoppinsMedium.size20,
        onSaved: onSaved,
        onChanged: onChanged,
        validator: validator,
        textInputAction: textInputAction,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: labelText,
          hintStyle: fontFamilyPoppinsLight.size16,
          labelStyle: fontFamilyPoppinsLight.size16.colorBlack,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: kcPrimaryColor, width: 1.w)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kcPrimaryColor, width: 1.w)),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.w)),
        ),
      ),
    );
  }
}
