import 'app_localizations.g.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get notFound => 'Данные не найдены';

  @override
  String get error => 'Ошибка';

  @override
  String get somethingWentWrong => 'Что-то пошло не так';

  @override
  String get requestSuccess => 'Запрос выполнен успешно';

  @override
  String get no => 'Нет';

  @override
  String get yes => 'Да';

  @override
  String get edit => 'Редактировать';

  @override
  String get delete => 'Удалить';

  @override
  String get cancel => 'Отмена';

  @override
  String get requiredField => 'Обязательное поле';

  @override
  String get invalidFormat => 'Неверный формат';

  @override
  String get language => 'Язык';
}
