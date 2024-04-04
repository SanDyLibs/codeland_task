import 'package:codeland_task/ui/common/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData theme = ThemeData(
  primarySwatch: Colors.orange,
  scaffoldBackgroundColor: kcWhite,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  dividerColor: Colors.transparent,
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: kcBackgroundColor,
    selectionColor: kcPrimaryColor.withOpacity(0.3),
    selectionHandleColor: kcPrimaryColor,
  ),
  expansionTileTheme: const ExpansionTileThemeData(
    iconColor: kcPrimaryColor,
    collapsedIconColor: kcPrimaryColor,
  ),
  checkboxTheme: CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(3),
    ),
    side: const BorderSide(color: Colors.white30),
    fillColor: MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        return kcPrimaryColor;
      },
    ),
  ),
);
