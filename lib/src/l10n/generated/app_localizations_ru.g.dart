import 'package:intl/intl.dart' as intl;

import 'app_localizations.g.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get clickHere => 'нажмите здесь';

  @override
  String get continueText => 'Продолжить';

  @override
  String get enterSmsCodeSentToNumber => 'Введите код из SMS, который мы отправили на номер';

  @override
  String get loginAndRegistration => 'Вход и регистрация';

  @override
  String get noAccountRegisterService => 'Ещё нет аккаунта? Зарегистрируйте свой сервис —';

  @override
  String get phoneNumber => 'Номер телефона';

  @override
  String get sendCodeAgain => 'Отправить код ещё раз';

  @override
  String sendCodeAgainInSeconds(String seconds) {
    return 'Отправить код ещё раз через 00:$seconds';
  }

  @override
  String get smsCode => 'Код из SMS';

  @override
  String get add => 'Добавить';

  @override
  String get apply => 'Применить';

  @override
  String get cancel => 'Отмена';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get delete => 'Удалить';

  @override
  String get done => 'Готово';

  @override
  String get edit => 'Редактировать';

  @override
  String get exit => 'Выйти';

  @override
  String get hide => 'Скрыть';

  @override
  String get reset => 'Сбросить';

  @override
  String get retry => 'Повторить';

  @override
  String get save => 'Сохранить';

  @override
  String get search => 'Поиск';

  @override
  String get select => 'Выбрать';

  @override
  String get selectAll => 'Выбрать все';

  @override
  String get unfold => 'Раскрыть';

  @override
  String get addOnlineBooking => 'Добавить онлайн-запись';

  @override
  String get addToQueue => 'Добавить в очередь';

  @override
  String get allowCameraAccess => 'Разрешите доступ к камере для продолжения';

  @override
  String get awaiting => 'Ожидают';

  @override
  String get cashRegister => 'Касса';

  @override
  String get continueBooking => 'Продолжить запись';

  @override
  String get editBooking => 'Редактировать заказ';

  @override
  String get history => 'История';

  @override
  String get journal => 'Журнал';

  @override
  String get liveQueue => 'Живая очередь';

  @override
  String get onlineBooking => 'Онлайн запись';

  @override
  String get onlineBookingCreated => 'Онлайн-запись успешно создана';

  @override
  String get orderAddedToQueue => 'Заказ успешно добавлен в очередь';

  @override
  String get orderSuccessfullyUpdated => 'Заказ успешно обновлен';

  @override
  String get queueBooking => 'Запись в очередь';

  @override
  String get scanSuccessful => 'Сканирование кода\nпрошло успешно';

  @override
  String get scanned => 'Отсканирован';

  @override
  String get selectDateTime => 'Выбор даты и времени';

  @override
  String get selectedTime => 'Выбранное время:';

  @override
  String get timeNotSelected => 'время не выбрано';

  @override
  String get toSelectAnotherTime => 'Чтобы выбрать другое время,';

  @override
  String get addCar => 'Добавить авто';

  @override
  String get car => 'Авто';

  @override
  String get carMakesAndModels => 'Марки и модели авто';

  @override
  String get carServices => 'Автосервисы';

  @override
  String get editCar => 'Редактировать авто';

  @override
  String get enterLicensePlate => 'Введите гос номер';

  @override
  String get generation => 'Поколение';

  @override
  String get licensePlate => 'Гос. номер';

  @override
  String get make => 'Марка';

  @override
  String get model => 'Модель';

  @override
  String get selectCarMakeAndModel => 'Выберите марку и модель автомобиля';

  @override
  String get selectGeneration => 'Выберите поколение';

  @override
  String get selectMake => 'Выберите марку';

  @override
  String get selectModel => 'Выберите модель';

  @override
  String totalCars(int totalCount) {
    return 'Автомобили: $totalCount';
  }

  @override
  String get addClient => 'Добавить клиента';

  @override
  String get client => 'Клиент';

  @override
  String get clientFound => 'Найденный клиент:';

  @override
  String get clientName => 'Имя клиента';

  @override
  String get clients => 'Клиенты';

  @override
  String get editClient => 'Редактировать клиента';

  @override
  String get noClientsYet => 'Клиентов еще нет';

  @override
  String totalClients(int totalObjects) {
    return 'Клиентов: $totalObjects';
  }

  @override
  String get addCompany => 'Добавить компанию';

  @override
  String get companyName => 'Название компании';

  @override
  String get editCompany => 'Редактировать компанию';

  @override
  String get enterCompanyName => 'Введите наименование';

  @override
  String get legalCompanies => 'Юридические компании';

  @override
  String get legalEntity => 'Юридическое лицо';

  @override
  String get legalEntityShort => 'Юр. лицо';

  @override
  String get addEmployee => 'Добавить сотрудника';

  @override
  String get addAtLeastOneEmployee => 'Для записи клиентов в журнал необходимо\nдобавить хотя бы одного сотрудника-мойщика.\nВы можете сделать это прямо сейчас.';

  @override
  String get admin => 'Админ';

  @override
  String get administrator => 'Администратор';

  @override
  String get any => 'Любой';

  @override
  String get carWasher => 'Автомойщик';

  @override
  String get carWashers => 'Автомойщики';

  @override
  String get employee => 'Сотрудник';

  @override
  String get employeeListEmpty => 'Список сотрудников пуст';

  @override
  String get employeeName => 'Имя сотрудника';

  @override
  String get employeePhoneNumber => 'Номер телефона сотрудника';

  @override
  String get employeeRole => 'Роль сотрудника';

  @override
  String get editEmployee => 'Редактировать сотрудника';

  @override
  String get enterName => 'Введите имя';

  @override
  String get enterPhoneNumber => 'Введите номер телефона';

  @override
  String get phoneNumberNotChangeable => 'Номер телефона нельзя изменить. Для смены номера удалите сотрудника и добавьте заново.';

  @override
  String get salaryRate => 'Зарплатная ставка';

  @override
  String get selectEmployee => 'Выберите сотрудника';

  @override
  String get selectPercentage => 'Выберите процент';

  @override
  String get selectRole => 'Выберите роль';

  @override
  String get staff => 'Персонал';

  @override
  String get backToHome => 'Вернуться на главную страницу';

  @override
  String get badRequest => 'Неверный запрос, проверьте ваши данные и попробуйте снова';

  @override
  String get connectionTimeout => 'Время ответа сервера истекло';

  @override
  String get error => 'Ошибка';

  @override
  String errorType(String error) {
    return 'Тип ошибки: $error';
  }

  @override
  String get initializationFailed => 'Ошибка инициализации';

  @override
  String get internalServerError => 'Пожалуйста, попробуйте позже, произошла внутренняя ошибка';

  @override
  String get invalidRequestCheckData => 'Неверный запрос, проверьте ваши данные и попробуйте снова';

  @override
  String get noAvailableData => 'Нет доступных данных';

  @override
  String get noInternetConnection => 'Нет подключения к интернету';

  @override
  String get notFound => 'Данные не найдены';

  @override
  String get requestSuccess => 'Запрос выполнен успешно';

  @override
  String get serverResponseTimeExpired => 'Время ответа сервера истекло';

  @override
  String get serverUnavailableTryLater => 'Попробуйте позже, сервер в настоящее время недоступен';

  @override
  String get somethingWentWrong => 'Что-то пошло не так';

  @override
  String get tooManyRequests => 'Слишком много запросов, пожалуйста, попробуйте позже';

  @override
  String get unauthorized => 'Не авторизован';

  @override
  String get chooseTime => 'Выбрать время';

  @override
  String get coordinates => 'Координаты';

  @override
  String get coordinatesCannotBeEmpty => 'Координаты не могут быть пустыми';

  @override
  String get fillRequiredFields => 'Заполните обязательные поля';

  @override
  String get invalidFormat => 'Неверный формат';

  @override
  String get requiredField => 'Обязательное поле';

  @override
  String get saveChanges => 'Сохранить изменения';

  @override
  String get address => 'Адрес';

  @override
  String get city => 'Город';

  @override
  String get enterAddress => 'Введите адрес';

  @override
  String get link2GIS => 'Ссылка 2ГИС';

  @override
  String get location => 'Местоположение';

  @override
  String get pointOnMap => 'Точка на карте';

  @override
  String get selectCity => 'Выберите город';

  @override
  String get specify2GISLink => 'Укажите ссылку 2ГИС';

  @override
  String get specifyYandexMapsLink => 'Укажите ссылку Яндекс карты';

  @override
  String get yandexMapsLink => 'Ссылка Яндекс Карты';

  @override
  String get acceptPayment => 'Принять оплату';

  @override
  String get acceptPaymentQr => 'Принять оплату';

  @override
  String get addQr => 'Добавить QR';

  @override
  String get addQrPayment => 'Добавить QR-оплату';

  @override
  String get amount => 'Сумма';

  @override
  String get bankName => 'Наименование банка';

  @override
  String bonusInfo(int inputAmount, int qrAmount) {
    return '$inputAmount ₸ за ввод, $qrAmount ₸ за запись с QR';
  }

  @override
  String get calculate => 'Высчитать';

  @override
  String get calculator => 'Калькулятор';

  @override
  String get cardNumber => 'Номер карты';

  @override
  String get discount => 'Скидка';

  @override
  String discountPercentage(num discount) {
    return 'Скидка: $discount%';
  }

  @override
  String get editAmount => 'Редактировать сумму';

  @override
  String get emptyHere => 'Здесь пусто';

  @override
  String get enterAmountForWithdrawal => 'Введите сумму для вывода средств';

  @override
  String get enterBankName => 'Введите наименование';

  @override
  String get enterCardNumber => 'Введите номер карты';

  @override
  String get enterCorrectCardDetails => 'Введите корректные данные карты';

  @override
  String get expectReceiptWithin24Hours => 'Ожидайте поступления в течение 24 часа';

  @override
  String get incomeCalculator => 'Калькулятор дохода';

  @override
  String get insufficientFundsForWithdrawal => 'Недостаточно средств для вывода';

  @override
  String minWithdrawalAmount(int amount) {
    return 'Минимальная сумма для вывода — $amount ₸';
  }

  @override
  String minWithdrawalAmountIs(int amount) {
    return 'Минимальная сумма вывода — $amount ₸';
  }

  @override
  String get netIncome => 'Чистый доход';

  @override
  String get noQrPayments => 'QR оплата отсутствуют';

  @override
  String get operationPerformed => 'Операция выполнена';

  @override
  String get otherExpenses => 'Прочие расходы';

  @override
  String get paid => 'Оплачен';

  @override
  String get paidStatus => 'Оплачено';

  @override
  String get payment => 'Оплата';

  @override
  String get paymentMethod => 'Способ оплаты';

  @override
  String get promotionalPrice => 'Акционная цена';

  @override
  String get qrPayment => 'Оплата по QR';

  @override
  String get qrPaymentHeader => 'Оплата по QR';

  @override
  String get qrPhoto => 'Фотография QR';

  @override
  String get qrScanner => 'QR - сканер';

  @override
  String get revenueFromInner => 'Доход с внутренней';

  @override
  String get revenueFromOuter => 'Доход с внешней';

  @override
  String get revenueFromQueue => 'Доход с очереди';

  @override
  String get salary => 'Зарплата';

  @override
  String get salaryExpenses => 'Зарплатные расходы';

  @override
  String get selectPaymentMethod => 'Выберите способ оплаты';

  @override
  String get sendRequest => 'Отправить запрос';

  @override
  String get showToClientToAcceptPayment => 'Покажите клиенту чтобы принять оплату';

  @override
  String get specifyAmountForWithdrawal => 'Укажите сумму для вывода';

  @override
  String get total => 'Итого';

  @override
  String get totalExpenses => 'Общие расходы';

  @override
  String get totalRevenue => 'Общий доход';

  @override
  String get withdrawFunds => 'Вывести средства';

  @override
  String get withdrawalOfFunds => 'Вывод средств';

  @override
  String get withdrawalRequest => 'Запрос на вывод средств';

  @override
  String get withdrawalRequestSentForAmount => 'Отправлен запрос на вывод средств в размере:';

  @override
  String get withdrawalRequestSentSuccessfully => 'Запрос на вывод средств успешно отправлен';

  @override
  String get yourBalance => 'Ваш баланс';

  @override
  String countCars(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count машин',
      many: '$count машин',
      few: '$count машины',
      one: '$count машина',
    );
    return '$_temp0';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count штук',
      many: '$count штук',
      few: '$count штуки',
      one: '$count штука',
    );
    return '$_temp0';
  }

  @override
  String liveQueueCars(int liveQueueCount) {
    String _temp0 = intl.Intl.pluralLogic(
      liveQueueCount,
      locale: localeName,
      other: 'В живой очереди $liveQueueCount машин',
      many: 'В живой очереди $liveQueueCount машин',
      few: 'В живой очереди $liveQueueCount машины',
      one: 'В живой очереди $liveQueueCount машина',
    );
    return '$_temp0';
  }

  @override
  String onlineBookingCars(int onlineCount) {
    String _temp0 = intl.Intl.pluralLogic(
      onlineCount,
      locale: localeName,
      other: 'Онлайн записано $onlineCount машин',
      many: 'Онлайн записано $onlineCount машин',
      few: 'Онлайн записаны $onlineCount машины',
      one: 'Онлайн записана $onlineCount машина',
    );
    return '$_temp0';
  }

  @override
  String processCountCars(int processCount) {
    String _temp0 = intl.Intl.pluralLogic(
      processCount,
      locale: localeName,
      other: 'В процессе $processCount машин',
      many: 'В процессе $processCount машин',
      few: 'В процессе $processCount машины',
      one: 'В процессе $processCount машина',
    );
    return '$_temp0';
  }

  @override
  String selectedGenerations(int selectedGenerationsLength) {
    String _temp0 = intl.Intl.pluralLogic(
      selectedGenerationsLength,
      locale: localeName,
      other: 'Выбрано $selectedGenerationsLength поколения',
      many: 'Выбрано $selectedGenerationsLength поколений',
      few: 'Выбрано $selectedGenerationsLength поколения',
      one: 'Выбрано $selectedGenerationsLength поколение',
    );
    return '$_temp0';
  }

  @override
  String waitingLiveQueueCars(int liveQueueCount) {
    String _temp0 = intl.Intl.pluralLogic(
      liveQueueCount,
      locale: localeName,
      other: 'Ожидают (очередь) $liveQueueCount машин',
      many: 'Ожидают (очередь) $liveQueueCount машин',
      few: 'Ожидают (очередь) $liveQueueCount машины',
      one: 'Ожидает (очередь) $liveQueueCount машина',
    );
    return '$_temp0';
  }

  @override
  String waitingOnlineBookingCars(int onlineCount) {
    String _temp0 = intl.Intl.pluralLogic(
      onlineCount,
      locale: localeName,
      other: 'Ожидают (онлайн) $onlineCount машин',
      many: 'Ожидают (онлайн) $onlineCount машин',
      few: 'Ожидают (онлайн) $onlineCount машины',
      one: 'Ожидает (онлайн) $onlineCount машина',
    );
    return '$_temp0';
  }

  @override
  String get carCount => 'Кол-во машин';

  @override
  String get carWashersStatistics => 'Статистика автомойщиков';

  @override
  String get downloadReport => 'Скачать отчет';

  @override
  String get report => 'Отчет';

  @override
  String get selectReportDate => 'Выберите дату отчета';

  @override
  String get sendReport => 'Отправить отчет';

  @override
  String get totalOrders => 'Всего заказов';

  @override
  String get washingStatistics => 'Статистика мойки';

  @override
  String get addBody => 'Добавить кузов';

  @override
  String get addService => 'Добавить сервис';

  @override
  String get addServiceApplication => 'Добавление сервиса';

  @override
  String get addServiceButton => 'Добавить услугу';

  @override
  String get applicationSentForModeration => 'Заявка отправлена на модерацию';

  @override
  String get available => 'Доступно';

  @override
  String get carWash => 'Автомойка';

  @override
  String get completed => 'Завершен';

  @override
  String get created => 'Новый';

  @override
  String get deleteSelected => 'Удалить выбранные';

  @override
  String get description => 'Описание:';

  @override
  String get draft => 'Черновик';

  @override
  String get enterNameForService => 'Введите название';

  @override
  String get enterServiceDescription => 'Введите описание сервиса';

  @override
  String get enterServiceName => 'Введите название сервиса';

  @override
  String get errorSendingApplicationForModeration => 'Ошибка при отправлении заявки на модерацию';

  @override
  String get fillFormToSendApplication => 'Заполните форму, чтобы отправить заявку на добавление автосервиса. Все заявки проходят проверку перед публикацией.';

  @override
  String get inProgress => 'В процессе';

  @override
  String get mainPrice => 'Основная цена';

  @override
  String get mainPriceDescription => 'Основная цена - единая стоимость услуги для машин этого кузова. Для разных поколений и моделей можно установить отдельные цены.';

  @override
  String get noServicesForSelectedCar => 'Нет доступных услуг для выбранного автомобиля';

  @override
  String get oilChangePoint => 'Пункт замены масла';

  @override
  String get orderType => 'Тип заказа';

  @override
  String get selectAtLeastOneService => 'Выберите хотя бы одну услугу';

  @override
  String get selectBodies => 'Выберите кузова';

  @override
  String get selectServices => 'Выберите услуги';

  @override
  String get selectServiceType => 'Выберите вид сервиса';

  @override
  String get selectServiceTypePrompt => 'Выберите тип сервиса';

  @override
  String get selectType => 'Выберите тип';

  @override
  String get sendForModeration => 'Отправить на модерацию';

  @override
  String get separatePrice => 'Отдельная цена';

  @override
  String get separatePriceDescription => 'Отдельная цена - стоимость, установленная специально для выбранного поколения и модели автомобиля';

  @override
  String get service => 'Услуга';

  @override
  String get serviceDescription => 'Описание сервиса';

  @override
  String get serviceName => 'Название сервиса';

  @override
  String get serviceOperationData => 'Данные о работе сервиса';

  @override
  String get services => 'Услуги';

  @override
  String get servicesShort => 'Услуги:';

  @override
  String get serviceType => 'Вид сервиса';

  @override
  String get offeringsAmount => 'Сумма услуг';

  @override
  String get kazakh => 'Қазақша';

  @override
  String get language => 'Язык';

  @override
  String get russian => 'Русский';

  @override
  String get settings => 'Настройки';

  @override
  String get currentlyWashing => 'Моются сейчас';

  @override
  String get empty => 'Пусто';

  @override
  String get loading => 'Загрузка...';

  @override
  String get newUser => 'Новый пользователь';

  @override
  String get no => 'Нет';

  @override
  String get notPaid => 'Не оплачен';

  @override
  String get notSelected => 'Не выбран';

  @override
  String get notSpecified => 'Не указаны';

  @override
  String get status => 'Статус';

  @override
  String get successfully => 'Успешно!';

  @override
  String get uniqueUser => 'Уникальный юзер';

  @override
  String get unknown => 'Неизвестный';

  @override
  String get yes => 'Да';

  @override
  String get closingTimeFormat => 'Время закрытия должно быть в формате час:минута:секунда';

  @override
  String get day => 'День';

  @override
  String get endTime => 'Время завершения работы';

  @override
  String get evening => 'Вечер';

  @override
  String get morning => 'Утро';

  @override
  String get night => 'Ночь';

  @override
  String get openingTimeBeforeClosingTime => 'Время открытия должно быть раньше времени закрытия';

  @override
  String get openingTimeFormat => 'Время открытия должно быть в формате час:минута:секунда';

  @override
  String get recordDate => 'Дата записи';

  @override
  String get recordTime => 'Время записи';

  @override
  String get roundTheClock => 'Круглосуточно';

  @override
  String get selectEndTime => 'Выберите время завершения работы';

  @override
  String get selectStartTime => 'Выберите время начала работы';

  @override
  String get startTime => 'Время начала работы';

  @override
  String get workSchedule => 'График работы';

  @override
  String get comingSoon => 'Скоро';

  @override
  String get confirmButton => 'Подтвердить';

  @override
  String get filters => 'Фильтры';

  @override
  String get name => 'Имя';

  @override
  String get nothingFound => 'Ничего не найдено';

  @override
  String get record => 'Запись';

  @override
  String get enterAmount => 'Введите сумму';

  @override
  String get numberOfBoxes => 'Количество боксов';

  @override
  String get numberOfBoxesMustBeGreaterThanZero => 'Количество боксов должно быть больше нуля';

  @override
  String get numberOfBoxesMustBeNumber => 'Количество боксов должно быть числом';

  @override
  String get someFilesExceedMaxSize => 'Некоторые файлы превышают максимальный размер 10 МБ';

  @override
  String get specifyNumberOfBoxes => 'Укажите количество боксов';

  @override
  String get confirmCompleteWashing => 'Вы уверены, что хотите завершить мойку?';

  @override
  String get confirmDeleteRecord => 'Вы уверены, что хотите удалить эту запись?';

  @override
  String get confirmStartWashing => 'Вы уверены, что хотите начать мойку?';

  @override
  String get completeWashing => 'Завершить мойку';

  @override
  String get completeWashingPrompt => 'Для завершения мойки необходимо сначала оплатить заказ';

  @override
  String get deleteRecord => 'Удалить запись';

  @override
  String get orderAlreadyScanned => 'Данный заказ уже просканирован';

  @override
  String get orderCannotBeScanned => 'Данный заказ не может быть просканирован';

  @override
  String get orderInfo => 'Информация о заказе';

  @override
  String get selectCarWasherPrompt => 'Пожалуйста, выберите автомойщика перед тем, как начать заказ';

  @override
  String get startWashing => 'Начать мойку';

  @override
  String get addConveniences => 'Добавить удобство';

  @override
  String get addPhotos => 'Добавить фотографии';

  @override
  String get cashRegisterMenu => 'Касса';

  @override
  String get conveniences => 'Удобства';

  @override
  String get doNotAcceptOrders => 'Не принимать заказы';

  @override
  String get mainInformation => 'Основная информация';

  @override
  String get notifications => 'Уведомления';

  @override
  String get notificationsMenu => 'Уведомления';

  @override
  String get organization => 'Организация';

  @override
  String get organizationMenu => 'Организация';

  @override
  String get photos => 'Фотографии';

  @override
  String get selectConveniences => 'Выберите удобства';

  @override
  String get techSupport => 'Тех поддержка';

  @override
  String get call => 'Позвонить';

  @override
  String get comment => 'Комментарий:';

  @override
  String get deleteAccount => 'Удалить аккаунт';

  @override
  String get deleteAccountConfirmation => 'Вы уверены, что хотите отправить запрос на удаление своего аккаунта?';

  @override
  String get deleteAccountRequestSent => 'Запрос на удаление аккаунта отправлен. Ожидайте подтверждения.';

  @override
  String get deleteAccountTitle => 'Удаление аккаунта';

  @override
  String get logout => 'Выйти';

  @override
  String get reply => 'Ответ:';

  @override
  String get replyToReview => 'Ответить на отзыв';

  @override
  String get replyToReviewAdded => 'Ответ на отзыв добавлен';

  @override
  String get respond => 'Ответить';

  @override
  String get reviews => 'Отзывы';

  @override
  String get reviewsAndRatings => 'Отзывы и рейтинги';

  @override
  String get thanksForReviewSeeYouAgain => 'Спасибо за ваш отзыв! Будем рады видеть вас снова';

  @override
  String get writeOnWhatsApp => 'Написать в WhatsApp';

  @override
  String get yourReplyShowsServiceLevel => 'Ваш ответ поможет показать уровень сервиса и отношение к клиентам';
}
