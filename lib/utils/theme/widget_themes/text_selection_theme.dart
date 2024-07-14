import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TTextSelectionTheme {
  TTextSelectionTheme._();
  static TextSelectionThemeData commonTextSelection =
      const TextSelectionThemeData(
    selectionColor: TColors.primary,
    cursorColor: TColors.primary,
    selectionHandleColor: TColors.primary,
  );
}
