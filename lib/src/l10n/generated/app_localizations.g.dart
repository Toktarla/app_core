import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.g.dart';
import 'app_localizations_kk.g.dart';
import 'app_localizations_ru.g.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.g.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('kk'),
    Locale('ru')
  ];

  /// No description provided for @clickHere.
  ///
  /// In ru, this message translates to:
  /// **'нажмите здесь'**
  String get clickHere;

  /// No description provided for @continueText.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить'**
  String get continueText;

  /// No description provided for @enterSmsCodeSentToNumber.
  ///
  /// In ru, this message translates to:
  /// **'Введите код из SMS, который мы отправили на номер'**
  String get enterSmsCodeSentToNumber;

  /// No description provided for @loginAndRegistration.
  ///
  /// In ru, this message translates to:
  /// **'Вход и регистрация'**
  String get loginAndRegistration;

  /// No description provided for @noAccountRegisterService.
  ///
  /// In ru, this message translates to:
  /// **'Ещё нет аккаунта? Зарегистрируйте свой сервис —'**
  String get noAccountRegisterService;

  /// No description provided for @phoneNumber.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get phoneNumber;

  /// No description provided for @sendCodeAgain.
  ///
  /// In ru, this message translates to:
  /// **'Отправить код ещё раз'**
  String get sendCodeAgain;

  /// No description provided for @sendCodeAgainInSeconds.
  ///
  /// In ru, this message translates to:
  /// **'Отправить код ещё раз через 00:{seconds}'**
  String sendCodeAgainInSeconds(String seconds);

  /// No description provided for @smsCode.
  ///
  /// In ru, this message translates to:
  /// **'Код из SMS'**
  String get smsCode;

  /// No description provided for @add.
  ///
  /// In ru, this message translates to:
  /// **'Добавить'**
  String get add;

  /// No description provided for @apply.
  ///
  /// In ru, this message translates to:
  /// **'Применить'**
  String get apply;

  /// No description provided for @cancel.
  ///
  /// In ru, this message translates to:
  /// **'Отмена'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить'**
  String get confirm;

  /// No description provided for @delete.
  ///
  /// In ru, this message translates to:
  /// **'Удалить'**
  String get delete;

  /// No description provided for @done.
  ///
  /// In ru, this message translates to:
  /// **'Готово'**
  String get done;

  /// No description provided for @edit.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать'**
  String get edit;

  /// No description provided for @exit.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get exit;

  /// No description provided for @hide.
  ///
  /// In ru, this message translates to:
  /// **'Скрыть'**
  String get hide;

  /// No description provided for @reset.
  ///
  /// In ru, this message translates to:
  /// **'Сбросить'**
  String get reset;

  /// No description provided for @retry.
  ///
  /// In ru, this message translates to:
  /// **'Повторить'**
  String get retry;

  /// No description provided for @save.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить'**
  String get save;

  /// No description provided for @search.
  ///
  /// In ru, this message translates to:
  /// **'Поиск'**
  String get search;

  /// No description provided for @select.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать'**
  String get select;

  /// No description provided for @selectAll.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать все'**
  String get selectAll;

  /// No description provided for @unfold.
  ///
  /// In ru, this message translates to:
  /// **'Раскрыть'**
  String get unfold;

  /// No description provided for @addOnlineBooking.
  ///
  /// In ru, this message translates to:
  /// **'Добавить онлайн-запись'**
  String get addOnlineBooking;

  /// No description provided for @addToQueue.
  ///
  /// In ru, this message translates to:
  /// **'Добавить в очередь'**
  String get addToQueue;

  /// No description provided for @allowCameraAccess.
  ///
  /// In ru, this message translates to:
  /// **'Разрешите доступ к камере для продолжения'**
  String get allowCameraAccess;

  /// No description provided for @awaiting.
  ///
  /// In ru, this message translates to:
  /// **'Ожидают'**
  String get awaiting;

  /// No description provided for @cashRegister.
  ///
  /// In ru, this message translates to:
  /// **'Касса'**
  String get cashRegister;

  /// No description provided for @continueBooking.
  ///
  /// In ru, this message translates to:
  /// **'Продолжить запись'**
  String get continueBooking;

  /// No description provided for @editBooking.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать заказ'**
  String get editBooking;

  /// No description provided for @history.
  ///
  /// In ru, this message translates to:
  /// **'История'**
  String get history;

  /// No description provided for @journal.
  ///
  /// In ru, this message translates to:
  /// **'Журнал'**
  String get journal;

  /// No description provided for @liveQueue.
  ///
  /// In ru, this message translates to:
  /// **'Живая очередь'**
  String get liveQueue;

  /// No description provided for @onlineBooking.
  ///
  /// In ru, this message translates to:
  /// **'Онлайн запись'**
  String get onlineBooking;

  /// No description provided for @onlineBookingCreated.
  ///
  /// In ru, this message translates to:
  /// **'Онлайн-запись успешно создана'**
  String get onlineBookingCreated;

  /// No description provided for @orderAddedToQueue.
  ///
  /// In ru, this message translates to:
  /// **'Заказ успешно добавлен в очередь'**
  String get orderAddedToQueue;

  /// No description provided for @orderSuccessfullyUpdated.
  ///
  /// In ru, this message translates to:
  /// **'Заказ успешно обновлен'**
  String get orderSuccessfullyUpdated;

  /// No description provided for @queueBooking.
  ///
  /// In ru, this message translates to:
  /// **'Запись в очередь'**
  String get queueBooking;

  /// No description provided for @scanSuccessful.
  ///
  /// In ru, this message translates to:
  /// **'Сканирование кода\nпрошло успешно'**
  String get scanSuccessful;

  /// No description provided for @scanned.
  ///
  /// In ru, this message translates to:
  /// **'Отсканирован'**
  String get scanned;

  /// No description provided for @selectDateTime.
  ///
  /// In ru, this message translates to:
  /// **'Выбор даты и времени'**
  String get selectDateTime;

  /// No description provided for @selectedTime.
  ///
  /// In ru, this message translates to:
  /// **'Выбранное время:'**
  String get selectedTime;

  /// No description provided for @timeNotSelected.
  ///
  /// In ru, this message translates to:
  /// **'время не выбрано'**
  String get timeNotSelected;

  /// No description provided for @toSelectAnotherTime.
  ///
  /// In ru, this message translates to:
  /// **'Чтобы выбрать другое время,'**
  String get toSelectAnotherTime;

  /// No description provided for @addCar.
  ///
  /// In ru, this message translates to:
  /// **'Добавить авто'**
  String get addCar;

  /// No description provided for @car.
  ///
  /// In ru, this message translates to:
  /// **'Авто'**
  String get car;

  /// No description provided for @carMakesAndModels.
  ///
  /// In ru, this message translates to:
  /// **'Марки и модели авто'**
  String get carMakesAndModels;

  /// No description provided for @carServices.
  ///
  /// In ru, this message translates to:
  /// **'Автосервисы'**
  String get carServices;

  /// No description provided for @editCar.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать авто'**
  String get editCar;

  /// No description provided for @enterLicensePlate.
  ///
  /// In ru, this message translates to:
  /// **'Введите гос номер'**
  String get enterLicensePlate;

  /// No description provided for @generation.
  ///
  /// In ru, this message translates to:
  /// **'Поколение'**
  String get generation;

  /// No description provided for @licensePlate.
  ///
  /// In ru, this message translates to:
  /// **'Гос. номер'**
  String get licensePlate;

  /// No description provided for @make.
  ///
  /// In ru, this message translates to:
  /// **'Марка'**
  String get make;

  /// No description provided for @model.
  ///
  /// In ru, this message translates to:
  /// **'Модель'**
  String get model;

  /// No description provided for @selectCarMakeAndModel.
  ///
  /// In ru, this message translates to:
  /// **'Выберите марку и модель автомобиля'**
  String get selectCarMakeAndModel;

  /// No description provided for @selectGeneration.
  ///
  /// In ru, this message translates to:
  /// **'Выберите поколение'**
  String get selectGeneration;

  /// No description provided for @selectMake.
  ///
  /// In ru, this message translates to:
  /// **'Выберите марку'**
  String get selectMake;

  /// No description provided for @selectModel.
  ///
  /// In ru, this message translates to:
  /// **'Выберите модель'**
  String get selectModel;

  /// No description provided for @totalCars.
  ///
  /// In ru, this message translates to:
  /// **'Автомобили: {totalCount}'**
  String totalCars(int totalCount);

  /// No description provided for @addClient.
  ///
  /// In ru, this message translates to:
  /// **'Добавить клиента'**
  String get addClient;

  /// No description provided for @client.
  ///
  /// In ru, this message translates to:
  /// **'Клиент'**
  String get client;

  /// No description provided for @clientFound.
  ///
  /// In ru, this message translates to:
  /// **'Найденный клиент:'**
  String get clientFound;

  /// No description provided for @clientName.
  ///
  /// In ru, this message translates to:
  /// **'Имя клиента'**
  String get clientName;

  /// No description provided for @clients.
  ///
  /// In ru, this message translates to:
  /// **'Клиенты'**
  String get clients;

  /// No description provided for @editClient.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать клиента'**
  String get editClient;

  /// No description provided for @noClientsYet.
  ///
  /// In ru, this message translates to:
  /// **'Клиентов еще нет'**
  String get noClientsYet;

  /// No description provided for @totalClients.
  ///
  /// In ru, this message translates to:
  /// **'Клиентов: {totalObjects}'**
  String totalClients(int totalObjects);

  /// No description provided for @addCompany.
  ///
  /// In ru, this message translates to:
  /// **'Добавить компанию'**
  String get addCompany;

  /// No description provided for @companyName.
  ///
  /// In ru, this message translates to:
  /// **'Название компании'**
  String get companyName;

  /// No description provided for @editCompany.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать компанию'**
  String get editCompany;

  /// No description provided for @enterCompanyName.
  ///
  /// In ru, this message translates to:
  /// **'Введите наименование'**
  String get enterCompanyName;

  /// No description provided for @legalCompanies.
  ///
  /// In ru, this message translates to:
  /// **'Юридические компании'**
  String get legalCompanies;

  /// No description provided for @legalEntity.
  ///
  /// In ru, this message translates to:
  /// **'Юридическое лицо'**
  String get legalEntity;

  /// No description provided for @legalEntityShort.
  ///
  /// In ru, this message translates to:
  /// **'Юр. лицо'**
  String get legalEntityShort;

  /// No description provided for @addEmployee.
  ///
  /// In ru, this message translates to:
  /// **'Добавить сотрудника'**
  String get addEmployee;

  /// No description provided for @addAtLeastOneEmployee.
  ///
  /// In ru, this message translates to:
  /// **'Для записи клиентов в журнал необходимо\nдобавить хотя бы одного сотрудника-мойщика.\nВы можете сделать это прямо сейчас.'**
  String get addAtLeastOneEmployee;

  /// No description provided for @admin.
  ///
  /// In ru, this message translates to:
  /// **'Админ'**
  String get admin;

  /// No description provided for @administrator.
  ///
  /// In ru, this message translates to:
  /// **'Администратор'**
  String get administrator;

  /// No description provided for @any.
  ///
  /// In ru, this message translates to:
  /// **'Любой'**
  String get any;

  /// No description provided for @carWasher.
  ///
  /// In ru, this message translates to:
  /// **'Автомойщик'**
  String get carWasher;

  /// No description provided for @carWashers.
  ///
  /// In ru, this message translates to:
  /// **'Автомойщики'**
  String get carWashers;

  /// No description provided for @employee.
  ///
  /// In ru, this message translates to:
  /// **'Сотрудник'**
  String get employee;

  /// No description provided for @employeeListEmpty.
  ///
  /// In ru, this message translates to:
  /// **'Список сотрудников пуст'**
  String get employeeListEmpty;

  /// No description provided for @employeeName.
  ///
  /// In ru, this message translates to:
  /// **'Имя сотрудника'**
  String get employeeName;

  /// No description provided for @employeePhoneNumber.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона сотрудника'**
  String get employeePhoneNumber;

  /// No description provided for @employeeRole.
  ///
  /// In ru, this message translates to:
  /// **'Роль сотрудника'**
  String get employeeRole;

  /// No description provided for @editEmployee.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать сотрудника'**
  String get editEmployee;

  /// No description provided for @enterName.
  ///
  /// In ru, this message translates to:
  /// **'Введите имя'**
  String get enterName;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In ru, this message translates to:
  /// **'Введите номер телефона'**
  String get enterPhoneNumber;

  /// No description provided for @phoneNumberNotChangeable.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона нельзя изменить. Для смены номера удалите сотрудника и добавьте заново.'**
  String get phoneNumberNotChangeable;

  /// No description provided for @salaryRate.
  ///
  /// In ru, this message translates to:
  /// **'Зарплатная ставка'**
  String get salaryRate;

  /// No description provided for @selectEmployee.
  ///
  /// In ru, this message translates to:
  /// **'Выберите сотрудника'**
  String get selectEmployee;

  /// No description provided for @selectPercentage.
  ///
  /// In ru, this message translates to:
  /// **'Выберите процент'**
  String get selectPercentage;

  /// No description provided for @selectRole.
  ///
  /// In ru, this message translates to:
  /// **'Выберите роль'**
  String get selectRole;

  /// No description provided for @staff.
  ///
  /// In ru, this message translates to:
  /// **'Персонал'**
  String get staff;

  /// No description provided for @backToHome.
  ///
  /// In ru, this message translates to:
  /// **'Вернуться на главную страницу'**
  String get backToHome;

  /// No description provided for @badRequest.
  ///
  /// In ru, this message translates to:
  /// **'Неверный запрос, проверьте ваши данные и попробуйте снова'**
  String get badRequest;

  /// No description provided for @connectionTimeout.
  ///
  /// In ru, this message translates to:
  /// **'Время ответа сервера истекло'**
  String get connectionTimeout;

  /// No description provided for @error.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка'**
  String get error;

  /// No description provided for @errorType.
  ///
  /// In ru, this message translates to:
  /// **'Тип ошибки: {error}'**
  String errorType(String error);

  /// No description provided for @initializationFailed.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка инициализации'**
  String get initializationFailed;

  /// No description provided for @internalServerError.
  ///
  /// In ru, this message translates to:
  /// **'Пожалуйста, попробуйте позже, произошла внутренняя ошибка'**
  String get internalServerError;

  /// No description provided for @invalidRequestCheckData.
  ///
  /// In ru, this message translates to:
  /// **'Неверный запрос, проверьте ваши данные и попробуйте снова'**
  String get invalidRequestCheckData;

  /// No description provided for @noAvailableData.
  ///
  /// In ru, this message translates to:
  /// **'Нет доступных данных'**
  String get noAvailableData;

  /// No description provided for @noInternetConnection.
  ///
  /// In ru, this message translates to:
  /// **'Нет подключения к интернету'**
  String get noInternetConnection;

  /// No description provided for @notFound.
  ///
  /// In ru, this message translates to:
  /// **'Данные не найдены'**
  String get notFound;

  /// No description provided for @requestSuccess.
  ///
  /// In ru, this message translates to:
  /// **'Запрос выполнен успешно'**
  String get requestSuccess;

  /// No description provided for @serverResponseTimeExpired.
  ///
  /// In ru, this message translates to:
  /// **'Время ответа сервера истекло'**
  String get serverResponseTimeExpired;

  /// No description provided for @serverUnavailableTryLater.
  ///
  /// In ru, this message translates to:
  /// **'Попробуйте позже, сервер в настоящее время недоступен'**
  String get serverUnavailableTryLater;

  /// No description provided for @somethingWentWrong.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так'**
  String get somethingWentWrong;

  /// No description provided for @tooManyRequests.
  ///
  /// In ru, this message translates to:
  /// **'Слишком много запросов, пожалуйста, попробуйте позже'**
  String get tooManyRequests;

  /// No description provided for @unauthorized.
  ///
  /// In ru, this message translates to:
  /// **'Не авторизован'**
  String get unauthorized;

  /// No description provided for @chooseTime.
  ///
  /// In ru, this message translates to:
  /// **'Выбрать время'**
  String get chooseTime;

  /// No description provided for @coordinates.
  ///
  /// In ru, this message translates to:
  /// **'Координаты'**
  String get coordinates;

  /// No description provided for @coordinatesCannotBeEmpty.
  ///
  /// In ru, this message translates to:
  /// **'Координаты не могут быть пустыми'**
  String get coordinatesCannotBeEmpty;

  /// No description provided for @fillRequiredFields.
  ///
  /// In ru, this message translates to:
  /// **'Заполните обязательные поля'**
  String get fillRequiredFields;

  /// No description provided for @invalidFormat.
  ///
  /// In ru, this message translates to:
  /// **'Неверный формат'**
  String get invalidFormat;

  /// No description provided for @requiredField.
  ///
  /// In ru, this message translates to:
  /// **'Обязательное поле'**
  String get requiredField;

  /// No description provided for @saveChanges.
  ///
  /// In ru, this message translates to:
  /// **'Сохранить изменения'**
  String get saveChanges;

  /// No description provided for @address.
  ///
  /// In ru, this message translates to:
  /// **'Адрес'**
  String get address;

  /// No description provided for @city.
  ///
  /// In ru, this message translates to:
  /// **'Город'**
  String get city;

  /// No description provided for @enterAddress.
  ///
  /// In ru, this message translates to:
  /// **'Введите адрес'**
  String get enterAddress;

  /// No description provided for @link2GIS.
  ///
  /// In ru, this message translates to:
  /// **'Ссылка 2ГИС'**
  String get link2GIS;

  /// No description provided for @location.
  ///
  /// In ru, this message translates to:
  /// **'Местоположение'**
  String get location;

  /// No description provided for @pointOnMap.
  ///
  /// In ru, this message translates to:
  /// **'Точка на карте'**
  String get pointOnMap;

  /// No description provided for @selectCity.
  ///
  /// In ru, this message translates to:
  /// **'Выберите город'**
  String get selectCity;

  /// No description provided for @specify2GISLink.
  ///
  /// In ru, this message translates to:
  /// **'Укажите ссылку 2ГИС'**
  String get specify2GISLink;

  /// No description provided for @specifyYandexMapsLink.
  ///
  /// In ru, this message translates to:
  /// **'Укажите ссылку Яндекс карты'**
  String get specifyYandexMapsLink;

  /// No description provided for @yandexMapsLink.
  ///
  /// In ru, this message translates to:
  /// **'Ссылка Яндекс Карты'**
  String get yandexMapsLink;

  /// No description provided for @acceptPayment.
  ///
  /// In ru, this message translates to:
  /// **'Принять оплату'**
  String get acceptPayment;

  /// No description provided for @acceptPaymentQr.
  ///
  /// In ru, this message translates to:
  /// **'Принять оплату'**
  String get acceptPaymentQr;

  /// No description provided for @addQr.
  ///
  /// In ru, this message translates to:
  /// **'Добавить QR'**
  String get addQr;

  /// No description provided for @addQrPayment.
  ///
  /// In ru, this message translates to:
  /// **'Добавить QR-оплату'**
  String get addQrPayment;

  /// No description provided for @amount.
  ///
  /// In ru, this message translates to:
  /// **'Сумма'**
  String get amount;

  /// No description provided for @bankName.
  ///
  /// In ru, this message translates to:
  /// **'Наименование банка'**
  String get bankName;

  /// No description provided for @bonusInfo.
  ///
  /// In ru, this message translates to:
  /// **'{inputAmount} ₸ за ввод, {qrAmount} ₸ за запись с QR'**
  String bonusInfo(int inputAmount, int qrAmount);

  /// No description provided for @calculate.
  ///
  /// In ru, this message translates to:
  /// **'Высчитать'**
  String get calculate;

  /// No description provided for @calculator.
  ///
  /// In ru, this message translates to:
  /// **'Калькулятор'**
  String get calculator;

  /// No description provided for @cardNumber.
  ///
  /// In ru, this message translates to:
  /// **'Номер карты'**
  String get cardNumber;

  /// No description provided for @discount.
  ///
  /// In ru, this message translates to:
  /// **'Скидка'**
  String get discount;

  /// No description provided for @discountPercentage.
  ///
  /// In ru, this message translates to:
  /// **'Скидка: {discount}%'**
  String discountPercentage(num discount);

  /// No description provided for @editAmount.
  ///
  /// In ru, this message translates to:
  /// **'Редактировать сумму'**
  String get editAmount;

  /// No description provided for @emptyHere.
  ///
  /// In ru, this message translates to:
  /// **'Здесь пусто'**
  String get emptyHere;

  /// No description provided for @enterAmountForWithdrawal.
  ///
  /// In ru, this message translates to:
  /// **'Введите сумму для вывода средств'**
  String get enterAmountForWithdrawal;

  /// No description provided for @enterBankName.
  ///
  /// In ru, this message translates to:
  /// **'Введите наименование'**
  String get enterBankName;

  /// No description provided for @enterCardNumber.
  ///
  /// In ru, this message translates to:
  /// **'Введите номер карты'**
  String get enterCardNumber;

  /// No description provided for @enterCorrectCardDetails.
  ///
  /// In ru, this message translates to:
  /// **'Введите корректные данные карты'**
  String get enterCorrectCardDetails;

  /// No description provided for @expectReceiptWithin24Hours.
  ///
  /// In ru, this message translates to:
  /// **'Ожидайте поступления в течение 24 часа'**
  String get expectReceiptWithin24Hours;

  /// No description provided for @incomeCalculator.
  ///
  /// In ru, this message translates to:
  /// **'Калькулятор дохода'**
  String get incomeCalculator;

  /// No description provided for @insufficientFundsForWithdrawal.
  ///
  /// In ru, this message translates to:
  /// **'Недостаточно средств для вывода'**
  String get insufficientFundsForWithdrawal;

  /// No description provided for @minWithdrawalAmount.
  ///
  /// In ru, this message translates to:
  /// **'Минимальная сумма для вывода — {amount} ₸'**
  String minWithdrawalAmount(int amount);

  /// No description provided for @minWithdrawalAmountIs.
  ///
  /// In ru, this message translates to:
  /// **'Минимальная сумма вывода — {amount} ₸'**
  String minWithdrawalAmountIs(int amount);

  /// No description provided for @netIncome.
  ///
  /// In ru, this message translates to:
  /// **'Чистый доход'**
  String get netIncome;

  /// No description provided for @noQrPayments.
  ///
  /// In ru, this message translates to:
  /// **'QR оплата отсутствуют'**
  String get noQrPayments;

  /// No description provided for @operationPerformed.
  ///
  /// In ru, this message translates to:
  /// **'Операция выполнена'**
  String get operationPerformed;

  /// No description provided for @otherExpenses.
  ///
  /// In ru, this message translates to:
  /// **'Прочие расходы'**
  String get otherExpenses;

  /// No description provided for @paid.
  ///
  /// In ru, this message translates to:
  /// **'Оплачен'**
  String get paid;

  /// No description provided for @paidStatus.
  ///
  /// In ru, this message translates to:
  /// **'Оплачено'**
  String get paidStatus;

  /// No description provided for @payment.
  ///
  /// In ru, this message translates to:
  /// **'Оплата'**
  String get payment;

  /// No description provided for @paymentMethod.
  ///
  /// In ru, this message translates to:
  /// **'Способ оплаты'**
  String get paymentMethod;

  /// No description provided for @promotionalPrice.
  ///
  /// In ru, this message translates to:
  /// **'Акционная цена'**
  String get promotionalPrice;

  /// No description provided for @qrPayment.
  ///
  /// In ru, this message translates to:
  /// **'Оплата по QR'**
  String get qrPayment;

  /// No description provided for @qrPaymentHeader.
  ///
  /// In ru, this message translates to:
  /// **'Оплата по QR'**
  String get qrPaymentHeader;

  /// No description provided for @qrPhoto.
  ///
  /// In ru, this message translates to:
  /// **'Фотография QR'**
  String get qrPhoto;

  /// No description provided for @qrScanner.
  ///
  /// In ru, this message translates to:
  /// **'QR - сканер'**
  String get qrScanner;

  /// No description provided for @revenueFromInner.
  ///
  /// In ru, this message translates to:
  /// **'Доход с внутренней'**
  String get revenueFromInner;

  /// No description provided for @revenueFromOuter.
  ///
  /// In ru, this message translates to:
  /// **'Доход с внешней'**
  String get revenueFromOuter;

  /// No description provided for @revenueFromQueue.
  ///
  /// In ru, this message translates to:
  /// **'Доход с очереди'**
  String get revenueFromQueue;

  /// No description provided for @salary.
  ///
  /// In ru, this message translates to:
  /// **'Зарплата'**
  String get salary;

  /// No description provided for @salaryExpenses.
  ///
  /// In ru, this message translates to:
  /// **'Зарплатные расходы'**
  String get salaryExpenses;

  /// No description provided for @selectPaymentMethod.
  ///
  /// In ru, this message translates to:
  /// **'Выберите способ оплаты'**
  String get selectPaymentMethod;

  /// No description provided for @sendRequest.
  ///
  /// In ru, this message translates to:
  /// **'Отправить запрос'**
  String get sendRequest;

  /// No description provided for @showToClientToAcceptPayment.
  ///
  /// In ru, this message translates to:
  /// **'Покажите клиенту чтобы принять оплату'**
  String get showToClientToAcceptPayment;

  /// No description provided for @specifyAmountForWithdrawal.
  ///
  /// In ru, this message translates to:
  /// **'Укажите сумму для вывода'**
  String get specifyAmountForWithdrawal;

  /// No description provided for @total.
  ///
  /// In ru, this message translates to:
  /// **'Итого'**
  String get total;

  /// No description provided for @totalExpenses.
  ///
  /// In ru, this message translates to:
  /// **'Общие расходы'**
  String get totalExpenses;

  /// No description provided for @totalRevenue.
  ///
  /// In ru, this message translates to:
  /// **'Общий доход'**
  String get totalRevenue;

  /// No description provided for @withdrawFunds.
  ///
  /// In ru, this message translates to:
  /// **'Вывести средства'**
  String get withdrawFunds;

  /// No description provided for @withdrawalOfFunds.
  ///
  /// In ru, this message translates to:
  /// **'Вывод средств'**
  String get withdrawalOfFunds;

  /// No description provided for @withdrawalRequest.
  ///
  /// In ru, this message translates to:
  /// **'Запрос на вывод средств'**
  String get withdrawalRequest;

  /// No description provided for @withdrawalRequestSentForAmount.
  ///
  /// In ru, this message translates to:
  /// **'Отправлен запрос на вывод средств в размере:'**
  String get withdrawalRequestSentForAmount;

  /// No description provided for @withdrawalRequestSentSuccessfully.
  ///
  /// In ru, this message translates to:
  /// **'Запрос на вывод средств успешно отправлен'**
  String get withdrawalRequestSentSuccessfully;

  /// No description provided for @yourBalance.
  ///
  /// In ru, this message translates to:
  /// **'Ваш баланс'**
  String get yourBalance;

  /// No description provided for @countCars.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, one{{count} машина} few{{count} машины} many{{count} машин} other{{count} машин}}'**
  String countCars(int count);

  /// No description provided for @itemCount.
  ///
  /// In ru, this message translates to:
  /// **'{count, plural, =1{{count} штука} few{{count} штуки} many{{count} штук} other{{count} штук}}'**
  String itemCount(int count);

  /// No description provided for @liveQueueCars.
  ///
  /// In ru, this message translates to:
  /// **'{liveQueueCount, plural, one{В живой очереди {liveQueueCount} машина} few{В живой очереди {liveQueueCount} машины} many{В живой очереди {liveQueueCount} машин} other{В живой очереди {liveQueueCount} машин}}'**
  String liveQueueCars(int liveQueueCount);

  /// No description provided for @onlineBookingCars.
  ///
  /// In ru, this message translates to:
  /// **'{onlineCount, plural, one{Онлайн записана {onlineCount} машина} few{Онлайн записаны {onlineCount} машины} many{Онлайн записано {onlineCount} машин} other{Онлайн записано {onlineCount} машин}}'**
  String onlineBookingCars(int onlineCount);

  /// No description provided for @processCountCars.
  ///
  /// In ru, this message translates to:
  /// **'{processCount, plural, one{В процессе {processCount} машина} few{В процессе {processCount} машины} many{В процессе {processCount} машин} other{В процессе {processCount} машин}}'**
  String processCountCars(int processCount);

  /// No description provided for @selectedGenerations.
  ///
  /// In ru, this message translates to:
  /// **'{selectedGenerationsLength, plural, one{Выбрано {selectedGenerationsLength} поколение} few{Выбрано {selectedGenerationsLength} поколения} many{Выбрано {selectedGenerationsLength} поколений} other{Выбрано {selectedGenerationsLength} поколения}}'**
  String selectedGenerations(int selectedGenerationsLength);

  /// No description provided for @waitingLiveQueueCars.
  ///
  /// In ru, this message translates to:
  /// **'{liveQueueCount, plural, one{Ожидает (очередь) {liveQueueCount} машина} few{Ожидают (очередь) {liveQueueCount} машины} many{Ожидают (очередь) {liveQueueCount} машин} other{Ожидают (очередь) {liveQueueCount} машин}}'**
  String waitingLiveQueueCars(int liveQueueCount);

  /// No description provided for @waitingOnlineBookingCars.
  ///
  /// In ru, this message translates to:
  /// **'{onlineCount, plural, one{Ожидает (онлайн) {onlineCount} машина} few{Ожидают (онлайн) {onlineCount} машины} many{Ожидают (онлайн) {onlineCount} машин} other{Ожидают (онлайн) {onlineCount} машин}}'**
  String waitingOnlineBookingCars(int onlineCount);

  /// No description provided for @carCount.
  ///
  /// In ru, this message translates to:
  /// **'Кол-во машин'**
  String get carCount;

  /// No description provided for @carWashersStatistics.
  ///
  /// In ru, this message translates to:
  /// **'Статистика автомойщиков'**
  String get carWashersStatistics;

  /// No description provided for @downloadReport.
  ///
  /// In ru, this message translates to:
  /// **'Скачать отчет'**
  String get downloadReport;

  /// No description provided for @report.
  ///
  /// In ru, this message translates to:
  /// **'Отчет'**
  String get report;

  /// No description provided for @selectReportDate.
  ///
  /// In ru, this message translates to:
  /// **'Выберите дату отчета'**
  String get selectReportDate;

  /// No description provided for @sendReport.
  ///
  /// In ru, this message translates to:
  /// **'Отправить отчет'**
  String get sendReport;

  /// No description provided for @totalOrders.
  ///
  /// In ru, this message translates to:
  /// **'Всего заказов'**
  String get totalOrders;

  /// No description provided for @washingStatistics.
  ///
  /// In ru, this message translates to:
  /// **'Статистика мойки'**
  String get washingStatistics;

  /// No description provided for @addBody.
  ///
  /// In ru, this message translates to:
  /// **'Добавить кузов'**
  String get addBody;

  /// No description provided for @addService.
  ///
  /// In ru, this message translates to:
  /// **'Добавить сервис'**
  String get addService;

  /// No description provided for @addServiceApplication.
  ///
  /// In ru, this message translates to:
  /// **'Добавление сервиса'**
  String get addServiceApplication;

  /// No description provided for @addServiceButton.
  ///
  /// In ru, this message translates to:
  /// **'Добавить услугу'**
  String get addServiceButton;

  /// No description provided for @applicationSentForModeration.
  ///
  /// In ru, this message translates to:
  /// **'Заявка отправлена на модерацию'**
  String get applicationSentForModeration;

  /// No description provided for @available.
  ///
  /// In ru, this message translates to:
  /// **'Доступно'**
  String get available;

  /// No description provided for @carWash.
  ///
  /// In ru, this message translates to:
  /// **'Автомойка'**
  String get carWash;

  /// No description provided for @completed.
  ///
  /// In ru, this message translates to:
  /// **'Завершен'**
  String get completed;

  /// No description provided for @created.
  ///
  /// In ru, this message translates to:
  /// **'Новый'**
  String get created;

  /// No description provided for @deleteSelected.
  ///
  /// In ru, this message translates to:
  /// **'Удалить выбранные'**
  String get deleteSelected;

  /// No description provided for @description.
  ///
  /// In ru, this message translates to:
  /// **'Описание:'**
  String get description;

  /// No description provided for @draft.
  ///
  /// In ru, this message translates to:
  /// **'Черновик'**
  String get draft;

  /// No description provided for @enterNameForService.
  ///
  /// In ru, this message translates to:
  /// **'Введите название'**
  String get enterNameForService;

  /// No description provided for @enterServiceDescription.
  ///
  /// In ru, this message translates to:
  /// **'Введите описание сервиса'**
  String get enterServiceDescription;

  /// No description provided for @enterServiceName.
  ///
  /// In ru, this message translates to:
  /// **'Введите название сервиса'**
  String get enterServiceName;

  /// No description provided for @errorSendingApplicationForModeration.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка при отправлении заявки на модерацию'**
  String get errorSendingApplicationForModeration;

  /// No description provided for @fillFormToSendApplication.
  ///
  /// In ru, this message translates to:
  /// **'Заполните форму, чтобы отправить заявку на добавление автосервиса. Все заявки проходят проверку перед публикацией.'**
  String get fillFormToSendApplication;

  /// No description provided for @inProgress.
  ///
  /// In ru, this message translates to:
  /// **'В процессе'**
  String get inProgress;

  /// No description provided for @mainPrice.
  ///
  /// In ru, this message translates to:
  /// **'Основная цена'**
  String get mainPrice;

  /// No description provided for @mainPriceDescription.
  ///
  /// In ru, this message translates to:
  /// **'Основная цена - единая стоимость услуги для машин этого кузова. Для разных поколений и моделей можно установить отдельные цены.'**
  String get mainPriceDescription;

  /// No description provided for @noServicesForSelectedCar.
  ///
  /// In ru, this message translates to:
  /// **'Нет доступных услуг для выбранного автомобиля'**
  String get noServicesForSelectedCar;

  /// No description provided for @oilChangePoint.
  ///
  /// In ru, this message translates to:
  /// **'Пункт замены масла'**
  String get oilChangePoint;

  /// No description provided for @orderType.
  ///
  /// In ru, this message translates to:
  /// **'Тип заказа'**
  String get orderType;

  /// No description provided for @selectAtLeastOneService.
  ///
  /// In ru, this message translates to:
  /// **'Выберите хотя бы одну услугу'**
  String get selectAtLeastOneService;

  /// No description provided for @selectBodies.
  ///
  /// In ru, this message translates to:
  /// **'Выберите кузова'**
  String get selectBodies;

  /// No description provided for @selectServices.
  ///
  /// In ru, this message translates to:
  /// **'Выберите услуги'**
  String get selectServices;

  /// No description provided for @selectServiceType.
  ///
  /// In ru, this message translates to:
  /// **'Выберите вид сервиса'**
  String get selectServiceType;

  /// No description provided for @selectServiceTypePrompt.
  ///
  /// In ru, this message translates to:
  /// **'Выберите тип сервиса'**
  String get selectServiceTypePrompt;

  /// No description provided for @selectType.
  ///
  /// In ru, this message translates to:
  /// **'Выберите тип'**
  String get selectType;

  /// No description provided for @sendForModeration.
  ///
  /// In ru, this message translates to:
  /// **'Отправить на модерацию'**
  String get sendForModeration;

  /// No description provided for @separatePrice.
  ///
  /// In ru, this message translates to:
  /// **'Отдельная цена'**
  String get separatePrice;

  /// No description provided for @separatePriceDescription.
  ///
  /// In ru, this message translates to:
  /// **'Отдельная цена - стоимость, установленная специально для выбранного поколения и модели автомобиля'**
  String get separatePriceDescription;

  /// No description provided for @service.
  ///
  /// In ru, this message translates to:
  /// **'Услуга'**
  String get service;

  /// No description provided for @serviceDescription.
  ///
  /// In ru, this message translates to:
  /// **'Описание сервиса'**
  String get serviceDescription;

  /// No description provided for @serviceName.
  ///
  /// In ru, this message translates to:
  /// **'Название сервиса'**
  String get serviceName;

  /// No description provided for @serviceOperationData.
  ///
  /// In ru, this message translates to:
  /// **'Данные о работе сервиса'**
  String get serviceOperationData;

  /// No description provided for @services.
  ///
  /// In ru, this message translates to:
  /// **'Услуги'**
  String get services;

  /// No description provided for @servicesShort.
  ///
  /// In ru, this message translates to:
  /// **'Услуги:'**
  String get servicesShort;

  /// No description provided for @serviceType.
  ///
  /// In ru, this message translates to:
  /// **'Вид сервиса'**
  String get serviceType;

  /// No description provided for @offeringsAmount.
  ///
  /// In ru, this message translates to:
  /// **'Сумма услуг'**
  String get offeringsAmount;

  /// No description provided for @kazakh.
  ///
  /// In ru, this message translates to:
  /// **'Қазақша'**
  String get kazakh;

  /// No description provided for @language.
  ///
  /// In ru, this message translates to:
  /// **'Язык'**
  String get language;

  /// No description provided for @russian.
  ///
  /// In ru, this message translates to:
  /// **'Русский'**
  String get russian;

  /// No description provided for @settings.
  ///
  /// In ru, this message translates to:
  /// **'Настройки'**
  String get settings;

  /// No description provided for @currentlyWashing.
  ///
  /// In ru, this message translates to:
  /// **'Моются сейчас'**
  String get currentlyWashing;

  /// No description provided for @empty.
  ///
  /// In ru, this message translates to:
  /// **'Пусто'**
  String get empty;

  /// No description provided for @loading.
  ///
  /// In ru, this message translates to:
  /// **'Загрузка...'**
  String get loading;

  /// No description provided for @newUser.
  ///
  /// In ru, this message translates to:
  /// **'Новый пользователь'**
  String get newUser;

  /// No description provided for @no.
  ///
  /// In ru, this message translates to:
  /// **'Нет'**
  String get no;

  /// No description provided for @notPaid.
  ///
  /// In ru, this message translates to:
  /// **'Не оплачен'**
  String get notPaid;

  /// No description provided for @notSelected.
  ///
  /// In ru, this message translates to:
  /// **'Не выбран'**
  String get notSelected;

  /// No description provided for @notSpecified.
  ///
  /// In ru, this message translates to:
  /// **'Не указаны'**
  String get notSpecified;

  /// No description provided for @status.
  ///
  /// In ru, this message translates to:
  /// **'Статус'**
  String get status;

  /// No description provided for @successfully.
  ///
  /// In ru, this message translates to:
  /// **'Успешно!'**
  String get successfully;

  /// No description provided for @uniqueUser.
  ///
  /// In ru, this message translates to:
  /// **'Уникальный юзер'**
  String get uniqueUser;

  /// No description provided for @unknown.
  ///
  /// In ru, this message translates to:
  /// **'Неизвестный'**
  String get unknown;

  /// No description provided for @yes.
  ///
  /// In ru, this message translates to:
  /// **'Да'**
  String get yes;

  /// No description provided for @closingTimeFormat.
  ///
  /// In ru, this message translates to:
  /// **'Время закрытия должно быть в формате час:минута:секунда'**
  String get closingTimeFormat;

  /// No description provided for @day.
  ///
  /// In ru, this message translates to:
  /// **'День'**
  String get day;

  /// No description provided for @endTime.
  ///
  /// In ru, this message translates to:
  /// **'Время завершения работы'**
  String get endTime;

  /// No description provided for @evening.
  ///
  /// In ru, this message translates to:
  /// **'Вечер'**
  String get evening;

  /// No description provided for @morning.
  ///
  /// In ru, this message translates to:
  /// **'Утро'**
  String get morning;

  /// No description provided for @night.
  ///
  /// In ru, this message translates to:
  /// **'Ночь'**
  String get night;

  /// No description provided for @openingTimeBeforeClosingTime.
  ///
  /// In ru, this message translates to:
  /// **'Время открытия должно быть раньше времени закрытия'**
  String get openingTimeBeforeClosingTime;

  /// No description provided for @openingTimeFormat.
  ///
  /// In ru, this message translates to:
  /// **'Время открытия должно быть в формате час:минута:секунда'**
  String get openingTimeFormat;

  /// No description provided for @recordDate.
  ///
  /// In ru, this message translates to:
  /// **'Дата записи'**
  String get recordDate;

  /// No description provided for @recordTime.
  ///
  /// In ru, this message translates to:
  /// **'Время записи'**
  String get recordTime;

  /// No description provided for @roundTheClock.
  ///
  /// In ru, this message translates to:
  /// **'Круглосуточно'**
  String get roundTheClock;

  /// No description provided for @selectEndTime.
  ///
  /// In ru, this message translates to:
  /// **'Выберите время завершения работы'**
  String get selectEndTime;

  /// No description provided for @selectStartTime.
  ///
  /// In ru, this message translates to:
  /// **'Выберите время начала работы'**
  String get selectStartTime;

  /// No description provided for @startTime.
  ///
  /// In ru, this message translates to:
  /// **'Время начала работы'**
  String get startTime;

  /// No description provided for @workSchedule.
  ///
  /// In ru, this message translates to:
  /// **'График работы'**
  String get workSchedule;

  /// No description provided for @comingSoon.
  ///
  /// In ru, this message translates to:
  /// **'Скоро'**
  String get comingSoon;

  /// No description provided for @confirmButton.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить'**
  String get confirmButton;

  /// No description provided for @filters.
  ///
  /// In ru, this message translates to:
  /// **'Фильтры'**
  String get filters;

  /// No description provided for @name.
  ///
  /// In ru, this message translates to:
  /// **'Имя'**
  String get name;

  /// No description provided for @nothingFound.
  ///
  /// In ru, this message translates to:
  /// **'Ничего не найдено'**
  String get nothingFound;

  /// No description provided for @record.
  ///
  /// In ru, this message translates to:
  /// **'Запись'**
  String get record;

  /// No description provided for @enterAmount.
  ///
  /// In ru, this message translates to:
  /// **'Введите сумму'**
  String get enterAmount;

  /// No description provided for @numberOfBoxes.
  ///
  /// In ru, this message translates to:
  /// **'Количество боксов'**
  String get numberOfBoxes;

  /// No description provided for @numberOfBoxesMustBeGreaterThanZero.
  ///
  /// In ru, this message translates to:
  /// **'Количество боксов должно быть больше нуля'**
  String get numberOfBoxesMustBeGreaterThanZero;

  /// No description provided for @numberOfBoxesMustBeNumber.
  ///
  /// In ru, this message translates to:
  /// **'Количество боксов должно быть числом'**
  String get numberOfBoxesMustBeNumber;

  /// No description provided for @someFilesExceedMaxSize.
  ///
  /// In ru, this message translates to:
  /// **'Некоторые файлы превышают максимальный размер 10 МБ'**
  String get someFilesExceedMaxSize;

  /// No description provided for @specifyNumberOfBoxes.
  ///
  /// In ru, this message translates to:
  /// **'Укажите количество боксов'**
  String get specifyNumberOfBoxes;

  /// No description provided for @confirmCompleteWashing.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены, что хотите завершить мойку?'**
  String get confirmCompleteWashing;

  /// No description provided for @confirmDeleteRecord.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены, что хотите удалить эту запись?'**
  String get confirmDeleteRecord;

  /// No description provided for @confirmStartWashing.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены, что хотите начать мойку?'**
  String get confirmStartWashing;

  /// No description provided for @completeWashing.
  ///
  /// In ru, this message translates to:
  /// **'Завершить мойку'**
  String get completeWashing;

  /// No description provided for @completeWashingPrompt.
  ///
  /// In ru, this message translates to:
  /// **'Для завершения мойки необходимо сначала оплатить заказ'**
  String get completeWashingPrompt;

  /// No description provided for @deleteRecord.
  ///
  /// In ru, this message translates to:
  /// **'Удалить запись'**
  String get deleteRecord;

  /// No description provided for @orderAlreadyScanned.
  ///
  /// In ru, this message translates to:
  /// **'Данный заказ уже просканирован'**
  String get orderAlreadyScanned;

  /// No description provided for @orderCannotBeScanned.
  ///
  /// In ru, this message translates to:
  /// **'Данный заказ не может быть просканирован'**
  String get orderCannotBeScanned;

  /// No description provided for @orderInfo.
  ///
  /// In ru, this message translates to:
  /// **'Информация о заказе'**
  String get orderInfo;

  /// No description provided for @selectCarWasherPrompt.
  ///
  /// In ru, this message translates to:
  /// **'Пожалуйста, выберите автомойщика перед тем, как начать заказ'**
  String get selectCarWasherPrompt;

  /// No description provided for @startWashing.
  ///
  /// In ru, this message translates to:
  /// **'Начать мойку'**
  String get startWashing;

  /// No description provided for @addConveniences.
  ///
  /// In ru, this message translates to:
  /// **'Добавить удобство'**
  String get addConveniences;

  /// No description provided for @addPhotos.
  ///
  /// In ru, this message translates to:
  /// **'Добавить фотографии'**
  String get addPhotos;

  /// No description provided for @cashRegisterMenu.
  ///
  /// In ru, this message translates to:
  /// **'Касса'**
  String get cashRegisterMenu;

  /// No description provided for @conveniences.
  ///
  /// In ru, this message translates to:
  /// **'Удобства'**
  String get conveniences;

  /// No description provided for @doNotAcceptOrders.
  ///
  /// In ru, this message translates to:
  /// **'Не принимать заказы'**
  String get doNotAcceptOrders;

  /// No description provided for @mainInformation.
  ///
  /// In ru, this message translates to:
  /// **'Основная информация'**
  String get mainInformation;

  /// No description provided for @notifications.
  ///
  /// In ru, this message translates to:
  /// **'Уведомления'**
  String get notifications;

  /// No description provided for @notificationsMenu.
  ///
  /// In ru, this message translates to:
  /// **'Уведомления'**
  String get notificationsMenu;

  /// No description provided for @organization.
  ///
  /// In ru, this message translates to:
  /// **'Организация'**
  String get organization;

  /// No description provided for @organizationMenu.
  ///
  /// In ru, this message translates to:
  /// **'Организация'**
  String get organizationMenu;

  /// No description provided for @photos.
  ///
  /// In ru, this message translates to:
  /// **'Фотографии'**
  String get photos;

  /// No description provided for @selectConveniences.
  ///
  /// In ru, this message translates to:
  /// **'Выберите удобства'**
  String get selectConveniences;

  /// No description provided for @techSupport.
  ///
  /// In ru, this message translates to:
  /// **'Тех поддержка'**
  String get techSupport;

  /// No description provided for @call.
  ///
  /// In ru, this message translates to:
  /// **'Позвонить'**
  String get call;

  /// No description provided for @comment.
  ///
  /// In ru, this message translates to:
  /// **'Комментарий:'**
  String get comment;

  /// No description provided for @deleteAccount.
  ///
  /// In ru, this message translates to:
  /// **'Удалить аккаунт'**
  String get deleteAccount;

  /// No description provided for @deleteAccountConfirmation.
  ///
  /// In ru, this message translates to:
  /// **'Вы уверены, что хотите отправить запрос на удаление своего аккаунта?'**
  String get deleteAccountConfirmation;

  /// No description provided for @deleteAccountRequestSent.
  ///
  /// In ru, this message translates to:
  /// **'Запрос на удаление аккаунта отправлен. Ожидайте подтверждения.'**
  String get deleteAccountRequestSent;

  /// No description provided for @deleteAccountTitle.
  ///
  /// In ru, this message translates to:
  /// **'Удаление аккаунта'**
  String get deleteAccountTitle;

  /// No description provided for @logout.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get logout;

  /// No description provided for @reply.
  ///
  /// In ru, this message translates to:
  /// **'Ответ:'**
  String get reply;

  /// No description provided for @replyToReview.
  ///
  /// In ru, this message translates to:
  /// **'Ответить на отзыв'**
  String get replyToReview;

  /// No description provided for @replyToReviewAdded.
  ///
  /// In ru, this message translates to:
  /// **'Ответ на отзыв добавлен'**
  String get replyToReviewAdded;

  /// No description provided for @respond.
  ///
  /// In ru, this message translates to:
  /// **'Ответить'**
  String get respond;

  /// No description provided for @reviews.
  ///
  /// In ru, this message translates to:
  /// **'Отзывы'**
  String get reviews;

  /// No description provided for @reviewsAndRatings.
  ///
  /// In ru, this message translates to:
  /// **'Отзывы и рейтинги'**
  String get reviewsAndRatings;

  /// No description provided for @thanksForReviewSeeYouAgain.
  ///
  /// In ru, this message translates to:
  /// **'Спасибо за ваш отзыв! Будем рады видеть вас снова'**
  String get thanksForReviewSeeYouAgain;

  /// No description provided for @writeOnWhatsApp.
  ///
  /// In ru, this message translates to:
  /// **'Написать в WhatsApp'**
  String get writeOnWhatsApp;

  /// No description provided for @yourReplyShowsServiceLevel.
  ///
  /// In ru, this message translates to:
  /// **'Ваш ответ поможет показать уровень сервиса и отношение к клиентам'**
  String get yourReplyShowsServiceLevel;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'kk', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'kk': return AppLocalizationsKk();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
