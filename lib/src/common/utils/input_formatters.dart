import 'package:app_core/src/common/constants/app_constants.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return newValue.copyWith(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

class PhoneTextInputFormatter extends MaskTextInputFormatter {
  PhoneTextInputFormatter({
    super.initialText,
  }) : super(
          mask: AppConstants.phoneMask,
          filter: {'#': RegExp('[0-9]')},
          type: MaskAutoCompletionType.eager,
        );

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var newText = newValue.text;

    // If user starts typing with '8', replace it with '+7'
    if (newText.startsWith('8') && !oldValue.text.startsWith('+7')) {
      newText = '+7${newText.substring(1)}';
    }

    // Apply the mask formatter
    final maskedValue = super.formatEditUpdate(
      oldValue,
      newValue.copyWith(text: newText),
    );

    return maskedValue;
  }
}
