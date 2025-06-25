import 'package:app_core/src/l10n/localization.dart' as _l10n;
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String formatToDate() => this != null
      ? DateFormat(
          'dd.MM.yyyy',
          _l10n.L10n.current.localeName,
        ).format(this!)
      : 'N/A';
}
