import 'package:app_core/src/common/presentation/widgets/bottom_sheet/body.dart';
import 'package:app_core/src/common/presentation/widgets/inputs/app_radio_item.dart';
import 'package:app_core/src/l10n/localization.dart' as _l10n;
import 'package:app_core/src/settings/presentation/settings_scope.dart';
import 'package:flutter/material.dart';

class SelectLanguageBS extends StatelessWidget {
  const SelectLanguageBS({super.key});

  static Future<void> show(BuildContext context) => showModalBottomSheet<void>(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        builder: (context) => AppBottomSheet(
          title: _l10n.L10n.current.language,
          body: const SelectLanguageBS(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final selectedLocale = SettingsScope.of(context).locale;

    return Column(
      spacing: 16,
      children: [const Locale('ru'), const Locale('kk'), const Locale('en')]
          .map(
            (locale) => AppRadioItem<Locale>(
              title: _l10n.L10n.getName(locale.languageCode),
              value: locale,
              groupValue: selectedLocale,
              onChanged: (value) {
                SettingsScope.of(context).setLocale(value);
                Navigator.pop(context);
              },
            ),
          )
          .toList(),
    );
  }
}
