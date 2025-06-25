import 'package:app_core/src/l10n/localization.dart' as _l10n;

class ValidatorUtils {
  ValidatorUtils._();

  static String? notEmptyField(String? value) {
    if (value == null || value.isEmpty) {
      return _requiredFieldStr;
    }
    return null;
  }

  static String? phoneField(String? value) {
    if (value == null || value.isEmpty) {
      return _requiredFieldStr;
    }
    if (value.length < 16) {
      return _notValidFormatStr;
    }
    return null;
  }

  static String? confirmationCodeField(String? value) {
    if (value == null || value.isEmpty) {
      return _requiredFieldStr;
    }
    if (value.length < 4) {
      return _notValidFormatStr;
    }
    return null;
  }

  static String? timeField(String? value) {
    if (value == null || value.isEmpty) {
      return _requiredFieldStr;
    }
    if (!RegExp(r'^([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$')
        .hasMatch(value)) {
      return _notValidFormatStr;
    }
    return null;
  }

  static String? carPlateField(String? value) {
    if (value == null || value.isEmpty) {
      return _requiredFieldStr;
    }

    final hasThreeNumbers = RegExp(r'\d.*\d.*\d').hasMatch(value);
    final hasOneLetter = RegExp('[a-zA-ZА-Яа-я]').hasMatch(value);

    if (!hasThreeNumbers || !hasOneLetter) {
      return _notValidFormatStr;
    }

    return null;
  }

  static bool checkCarPlateField(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }

    return _platePatterns.any((pattern) => pattern.hasMatch(value));
  }

  static String get _requiredFieldStr => _l10n.L10n.current.requiredField;
  static String get _notValidFormatStr => _l10n.L10n.current.invalidFormat;

  static final List<RegExp> _platePatterns = [
    RegExp(r'^\d{3}[A-Z]{3}\d{2}$'), // 111AAA11 — обычные номера
    RegExp(r'^\d{3}[A-Z]{2}\d{2}$'), // 111AA11 — обычные номера
    RegExp(r'^[A-Z]\d{3}[A-Z]{3}$'), // A111AAA — грузовые
    RegExp(r'^\d{3}[A-Z]{3}$'), // 111AAA — юр.лица
    RegExp(r'^[A-Z] \d{3} [A-Z]{2}$'), // Z 111 AA — гос. номера
    RegExp(r'^\d{2}[A-Z]{1}\d{3}[A-Z]{2}$'), // 12A123AA — мотоциклы/мопеды
  ];
}
