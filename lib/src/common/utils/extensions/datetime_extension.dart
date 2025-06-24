import 'package:app_core/src/l10n/localization.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String formatToDate() => this != null
      ? DateFormat(
          'dd.MM.yyyy',
          L10n.current.localeName,
        ).format(this!)
      : 'N/A';
}
