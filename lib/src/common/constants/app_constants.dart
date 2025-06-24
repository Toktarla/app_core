import 'package:app_core/src/common/utils/input_formatters.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

/// `AppConstants` is a class that holds all the
/// base `static` constants used in the app.
final class AppConstants {
  static const String baseUrl = 'https://api.services.avtotime.kz/api';

  static MaskTextInputFormatter createPhoneFormatter({String? initialText}) =>
      PhoneTextInputFormatter(
        initialText: initialText,
      );

  static const String phoneMask = '+7 (###) ###-##-##';

  static MaskTextInputFormatter cardFormatter() => MaskTextInputFormatter(
        mask: '#### #### #### ####',
        filter: {'#': RegExp('[0-9]')},
        type: MaskAutoCompletionType.eager,
      );

  static const String techSupportPhoneNumberText = '+7 708 818 10 10';
  static const String techSupportCallUrl = 'tel:+77088181010';
  static const String techSupportWhatsappUrl = 'https://wa.me/+77088181010';
}
