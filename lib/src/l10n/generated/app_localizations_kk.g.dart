import 'package:intl/intl.dart' as intl;

import 'app_localizations.g.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get clickHere => 'мында басыңыз';

  @override
  String get continueText => 'Жалғастыру';

  @override
  String get enterSmsCodeSentToNumber => 'Біз жіберген SMS кодын енгізіңіз';

  @override
  String get loginAndRegistration => 'Кіру және тіркелу';

  @override
  String get noAccountRegisterService => 'Әлі аккаунтыңыз жоқ па? Өз ақпараттарыңызды тіркеңіз —';

  @override
  String get phoneNumber => 'Телефон нөмірі';

  @override
  String get sendCodeAgain => 'Кодты қайта жіберу';

  @override
  String sendCodeAgainInSeconds(String seconds) {
    return 'Кодты 00:$seconds кейін қайта жіберу';
  }

  @override
  String get smsCode => 'SMS коды';

  @override
  String get add => 'Қосу';

  @override
  String get apply => 'Қолдану';

  @override
  String get cancel => 'Бас тарту';

  @override
  String get confirm => 'Растау';

  @override
  String get delete => 'Жою';

  @override
  String get done => 'Дайын';

  @override
  String get edit => 'Өңдеу';

  @override
  String get exit => 'Шығу';

  @override
  String get hide => 'Жасыру';

  @override
  String get reset => 'Қалпына келтіру';

  @override
  String get retry => 'Қайталау';

  @override
  String get save => 'Сақтау';

  @override
  String get search => 'Іздеу';

  @override
  String get select => 'Таңдау';

  @override
  String get selectAll => 'Барлығын таңдау';

  @override
  String get unfold => 'Ашу';

  @override
  String get addOnlineBooking => 'Онлайн жазылу қосу';

  @override
  String get addToQueue => 'Кезекке қосу';

  @override
  String get allowCameraAccess => 'Жалғастыру үшін камераға кіруге рұқсат беріңіз';

  @override
  String get awaiting => 'Күтуде';

  @override
  String get cashRegister => 'Касса';

  @override
  String get continueBooking => 'Жазылуды жалғастыру';

  @override
  String get editBooking => 'Жазылымды өңдеу';

  @override
  String get history => 'Тарих';

  @override
  String get journal => 'Журнал';

  @override
  String get liveQueue => 'Тікелей кезек';

  @override
  String get onlineBooking => 'Онлайн жазылу';

  @override
  String get onlineBookingCreated => 'Онлайн жазылу сәтті жасалды';

  @override
  String get orderAddedToQueue => 'Тапсырыс кезекке сәтті қосылды';

  @override
  String get orderSuccessfullyUpdated => 'Тапсырыс сәтті жаңартылды';

  @override
  String get queueBooking => 'Кезекке жазылу';

  @override
  String get scanSuccessful => 'Кодты сканерлеу сәтті өтті';

  @override
  String get scanned => 'Сканерленген';

  @override
  String get selectDateTime => 'Күн мен уақытты таңдау';

  @override
  String get selectedTime => 'Таңдалған уақыт:';

  @override
  String get timeNotSelected => 'уақыт таңдалмады';

  @override
  String get toSelectAnotherTime => 'Басқа уақытты таңдау үшін,';

  @override
  String get addCar => 'Авто қосу';

  @override
  String get car => 'Авто';

  @override
  String get carMakesAndModels => 'Автомобиль маркалары мен модельдері';

  @override
  String get carServices => 'Автосервистер';

  @override
  String get editCar => 'Автоны өңдеу';

  @override
  String get enterLicensePlate => 'Мемлекеттік нөмірді енгізіңіз';

  @override
  String get generation => 'Буын';

  @override
  String get licensePlate => 'Мемлекеттік нөмір';

  @override
  String get make => 'Маркасы';

  @override
  String get model => 'Модель';

  @override
  String get selectCarMakeAndModel => 'Көлік маркасы мен моделін таңдаңыз';

  @override
  String get selectGeneration => 'Буынды таңдаңыз';

  @override
  String get selectMake => 'Марканы таңдаңыз';

  @override
  String get selectModel => 'Модельді таңдаңыз';

  @override
  String totalCars(int totalCount) {
    return 'Автомобильдер: $totalCount';
  }

  @override
  String get addClient => 'Клиент қосу';

  @override
  String get client => 'Клиент';

  @override
  String get clientFound => 'Табылған клиент:';

  @override
  String get clientName => 'Клиенттің аты';

  @override
  String get clients => 'Клиенттер';

  @override
  String get editClient => 'Клиентті өңдеу';

  @override
  String get noClientsYet => 'Әлі клиенттер жоқ';

  @override
  String totalClients(int totalObjects) {
    return 'Клиенттер: $totalObjects';
  }

  @override
  String get addCompany => 'Компания қосу';

  @override
  String get companyName => 'Компания атауы';

  @override
  String get editCompany => 'Компанияны өңдеу';

  @override
  String get enterCompanyName => 'Атауын енгізіңіз';

  @override
  String get legalCompanies => 'Заңды компаниялар';

  @override
  String get legalEntity => 'Заңды тұлға';

  @override
  String get legalEntityShort => 'Заңды тұлға';

  @override
  String get addEmployee => 'Қызметкер қосу';

  @override
  String get addAtLeastOneEmployee => 'Клиенттерді журналға жазу үшін кемінде\nбір жуындыру қызметкерін қосу қажет.\nСіз мұны дәл қазір жасай аласыз.';

  @override
  String get admin => 'Әкімші';

  @override
  String get administrator => 'Әкімші';

  @override
  String get any => 'Кез келген';

  @override
  String get carWasher => 'Автожуушы';

  @override
  String get carWashers => 'Автожуушылар';

  @override
  String get employee => 'Қызметкер';

  @override
  String get employeeListEmpty => 'Қызметкерлер тізімі бос';

  @override
  String get employeeName => 'Қызметкердің аты';

  @override
  String get employeePhoneNumber => 'Қызметкердің телефон нөмірі';

  @override
  String get employeeRole => 'Қызметкердің рөлі';

  @override
  String get editEmployee => 'Қызметкерді өңдеу';

  @override
  String get enterName => 'Атын енгізіңіз';

  @override
  String get enterPhoneNumber => 'Телефон нөмірін енгізіңіз';

  @override
  String get phoneNumberNotChangeable => 'Телефон нөмірін өзгерту мүмкін емес. Нөмірді өзгерту үшін қызметкерді өшіріп, қайта қосыңыз.';

  @override
  String get salaryRate => 'Жалақы мөлшері';

  @override
  String get selectEmployee => 'Қызметкерді таңдаңыз';

  @override
  String get selectPercentage => 'Пайызды таңдаңыз';

  @override
  String get selectRole => 'Рөлді таңдаңыз';

  @override
  String get staff => 'Қызметкерлер';

  @override
  String get backToHome => 'Басты бетке қайту';

  @override
  String get badRequest => 'Белгілі әрекет бұрыс орындалды, деректеріңізді тексеріп, қайталап көріңіз';

  @override
  String get connectionTimeout => 'Сервер жауап беру уақыты аяқталды';

  @override
  String get error => 'Қате';

  @override
  String errorType(String error) {
    return 'Қате түрі: $error';
  }

  @override
  String get initializationFailed => 'Қосымша басталмады';

  @override
  String get internalServerError => 'Кейінірек қайталап көріңіз, ішкі қате пайда болды';

  @override
  String get invalidRequestCheckData => 'Белгілі әрекет бұрыс орындалды, деректеріңізді тексеріп, қайталап көріңіз';

  @override
  String get noAvailableData => 'Қолжетімді деректер жоқ';

  @override
  String get noInternetConnection => 'Интернет байланысы жоқ';

  @override
  String get notFound => 'Деректер табылмады';

  @override
  String get requestSuccess => 'Әрекет сәтті орындалды';

  @override
  String get serverResponseTimeExpired => 'Сервер жауап беру уақыты аяқталды';

  @override
  String get serverUnavailableTryLater => 'Кейінірек қайталап көріңіз, сервер қазір қолжетімсіз';

  @override
  String get somethingWentWrong => 'Бірдеңе дұрыс болмады';

  @override
  String get tooManyRequests => 'Тым көп әрекет жасалынды, кейінірек қайталап көріңіз';

  @override
  String get unauthorized => 'Рұқсат берілмеген, регистрациядан өтіңіз';

  @override
  String get chooseTime => 'Уақытты таңдау';

  @override
  String get coordinates => 'Координаттар';

  @override
  String get coordinatesCannotBeEmpty => 'Координаттар бос болмауы керек';

  @override
  String get fillRequiredFields => 'Міндетті өрістерді толтырыңыз';

  @override
  String get invalidFormat => 'Жарамсыз формат';

  @override
  String get requiredField => 'Міндетті толтырылуы тиіс өріс';

  @override
  String get saveChanges => 'Өзгерістерді сақтау';

  @override
  String get address => 'Мекенжайы';

  @override
  String get city => 'Қала';

  @override
  String get enterAddress => 'Мекенжайды енгізіңіз';

  @override
  String get link2GIS => '2ГИС сілтемесі';

  @override
  String get location => 'Орналасқан жері';

  @override
  String get pointOnMap => 'Картадағы нүкте';

  @override
  String get selectCity => 'Қаланы таңдаңыз';

  @override
  String get specify2GISLink => '2ГИС сілтемесін көрсетіңіз';

  @override
  String get specifyYandexMapsLink => 'Яндекс Карталары сілтемесін көрсетіңіз';

  @override
  String get yandexMapsLink => 'Яндекс Карталары сілтемесі';

  @override
  String get acceptPayment => 'Төлемді қабылдау';

  @override
  String get acceptPaymentQr => 'Төлемді қабылдау';

  @override
  String get addQr => 'QR қосу';

  @override
  String get addQrPayment => 'QR-төлем қосу';

  @override
  String get amount => 'Бағасы';

  @override
  String get bankName => 'Банк атауы';

  @override
  String bonusInfo(int inputAmount, int qrAmount) {
    return 'Кіру үшін $inputAmount ₸, QR арқылы жазылу үшін $qrAmount ₸';
  }

  @override
  String get calculate => 'Есептеу';

  @override
  String get calculator => 'Калькулятор';

  @override
  String get cardNumber => 'Карта нөмірі';

  @override
  String get discount => 'Жеңілдік';

  @override
  String discountPercentage(num discount) {
    return 'Жеңілдік: $discount%';
  }

  @override
  String get editAmount => 'Бағаны өңдеу';

  @override
  String get emptyHere => 'Мұнда бос';

  @override
  String get enterAmountForWithdrawal => 'Шығару үшін бағаны енгізіңіз';

  @override
  String get enterBankName => 'Атауын енгізіңіз';

  @override
  String get enterCardNumber => 'Карта нөмірін енгізіңіз';

  @override
  String get enterCorrectCardDetails => 'Картаның дұрыс деректерін енгізіңіз';

  @override
  String get expectReceiptWithin24Hours => '24 сағат ішінде түсуін күтіңіз';

  @override
  String get incomeCalculator => 'Кіріс калькуляторы';

  @override
  String get insufficientFundsForWithdrawal => 'Шығару үшін қаражат жеткіліксіз';

  @override
  String minWithdrawalAmount(int amount) {
    return 'Шығару үшін ең төменгі баға — $amount ₸';
  }

  @override
  String minWithdrawalAmountIs(int amount) {
    return 'Ең төменгі шығару бағасы — $amount ₸';
  }

  @override
  String get netIncome => 'Таза кіріс';

  @override
  String get noQrPayments => 'QR төлемдері жоқ';

  @override
  String get operationPerformed => 'Операция орындалды';

  @override
  String get otherExpenses => 'Басқа шығыстар';

  @override
  String get paid => 'Төленген';

  @override
  String get paidStatus => 'Төленді';

  @override
  String get payment => 'Төлем';

  @override
  String get paymentMethod => 'Төлем әдісі';

  @override
  String get promotionalPrice => 'Акциялық баға';

  @override
  String get qrPayment => 'QR арқылы төлем';

  @override
  String get qrPaymentHeader => 'QR арқылы төлем';

  @override
  String get qrPhoto => 'QR фотосуреті';

  @override
  String get qrScanner => 'QR - сканер';

  @override
  String get revenueFromInner => 'Ішкі кіріс';

  @override
  String get revenueFromOuter => 'Сыртқы кіріс';

  @override
  String get revenueFromQueue => 'Кезектегі кіріс';

  @override
  String get salary => 'Жалақы';

  @override
  String get salaryExpenses => 'Жалақы шығыстары';

  @override
  String get selectPaymentMethod => 'Төлем әдісін таңдаңыз';

  @override
  String get sendRequest => 'Сұраныс жіберу';

  @override
  String get showToClientToAcceptPayment => 'Төлемді қабылдау үшін клиентке көрсетіңіз';

  @override
  String get specifyAmountForWithdrawal => 'Шығару үшін бағаны көрсетіңіз';

  @override
  String get total => 'Барлығы';

  @override
  String get totalExpenses => 'Жалпы шығыстар';

  @override
  String get totalRevenue => 'Жалпы кіріс';

  @override
  String get withdrawFunds => 'Қаражатты шығару';

  @override
  String get withdrawalOfFunds => 'Қаражатты шығару';

  @override
  String get withdrawalRequest => 'Қаражатты шығару сұранысы';

  @override
  String get withdrawalRequestSentForAmount => 'Шығаруға сұраныс жіберілді, бағасы:';

  @override
  String get withdrawalRequestSentSuccessfully => 'Қаражатты шығару сұранысы сәтті жіберілді';

  @override
  String get yourBalance => 'Сіздің балансыңыз';

  @override
  String countCars(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count көлік',
      one: '$count көлік',
    );
    return '$_temp0';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count дана',
      one: '$count дана',
    );
    return '$_temp0';
  }

  @override
  String liveQueueCars(int liveQueueCount) {
    return '$liveQueueCount көлік тікелей кезекте';
  }

  @override
  String onlineBookingCars(int onlineCount) {
    return '$onlineCount онлайн жазылған көлік';
  }

  @override
  String processCountCars(int processCount) {
    return 'Өңделіп жатқан $processCount көлік';
  }

  @override
  String selectedGenerations(int selectedGenerationsLength) {
    String _temp0 = intl.Intl.pluralLogic(
      selectedGenerationsLength,
      locale: localeName,
      other: '$selectedGenerationsLength ұрпақ таңдалды',
      one: '$selectedGenerationsLength ұрпақ таңдалды',
    );
    return '$_temp0';
  }

  @override
  String waitingLiveQueueCars(int liveQueueCount) {
    return '$liveQueueCount көлік (кезек) күтіп тұр';
  }

  @override
  String waitingOnlineBookingCars(int onlineCount) {
    return '$onlineCount көлік (онлайн) күтіп тұр';
  }

  @override
  String get carCount => 'Машина саны';

  @override
  String get carWashersStatistics => 'Автожуушылар статистикасы';

  @override
  String get downloadReport => 'Есепті жүктеу';

  @override
  String get report => 'Есеп';

  @override
  String get selectReportDate => 'Есеп күнін таңдаңыз';

  @override
  String get sendReport => 'Есепті жіберу';

  @override
  String get totalOrders => 'Барлық тапсырыстар';

  @override
  String get washingStatistics => 'Жуу статистикасы';

  @override
  String get addBody => 'Кузов қосу';

  @override
  String get addService => 'Қызмет қосу';

  @override
  String get addServiceApplication => 'Сервис қосуға өтінім';

  @override
  String get addServiceButton => 'Қызмет қосу';

  @override
  String get applicationSentForModeration => 'Өтінім модерацияға жіберілді';

  @override
  String get available => 'Қолжетімді';

  @override
  String get carWash => 'Автожуу';

  @override
  String get completed => 'Аяқталды';

  @override
  String get created => 'Жаңа';

  @override
  String get deleteSelected => 'Таңдалғандарды жою';

  @override
  String get description => 'Cипаттамасы:';

  @override
  String get draft => 'Черновик';

  @override
  String get enterNameForService => 'Атауын енгізіңіз';

  @override
  String get enterServiceDescription => 'Сервис сипаттамасын енгізіңіз';

  @override
  String get enterServiceName => 'Сервис атауын енгізіңіз';

  @override
  String get errorSendingApplicationForModeration => 'Модерацияға өтінім жіберу кезінде қате';

  @override
  String get fillFormToSendApplication => 'Автосервис қосуға өтінім жіберу үшін форманы толтырыңыз. Барлық өтінімдер жарияланбас бұрын тексеруден өтеді.';

  @override
  String get inProgress => 'Өңделуде';

  @override
  String get mainPrice => 'Негізгі баға';

  @override
  String get mainPriceDescription => 'Негізгі баға - бұл кузов түріндегі машиналар үшін қызметтің бірыңғай құны. Әртүрлі буындар мен модельдер үшін жеке бағаларды орнатуға болады.';

  @override
  String get noServicesForSelectedCar => 'Таңдалған көліkке арналған қызметтер жоқ';

  @override
  String get oilChangePoint => 'Май ауыстыру пункті';

  @override
  String get orderType => 'Тапсырыс түрі';

  @override
  String get selectAtLeastOneService => 'Кем дегенде бір қызметті таңдаңыз';

  @override
  String get selectBodies => 'Кузовтарды таңдаңыз';

  @override
  String get selectServices => 'Қызметтерді таңдаңыз';

  @override
  String get selectServiceType => 'Сервис түрін таңдаңыз';

  @override
  String get selectServiceTypePrompt => 'Сервис түрін таңдаңыз';

  @override
  String get selectType => 'Түрін таңдаңыз';

  @override
  String get sendForModeration => 'Модерацияға жіберу';

  @override
  String get separatePrice => 'Бөлек баға';

  @override
  String get separatePriceDescription => 'Жеке баға - таңдалған буын мен автомобиль моделі үшін арнайы белгіленген құн';

  @override
  String get service => 'Қызмет';

  @override
  String get serviceDescription => 'Сервис сипаттамасы';

  @override
  String get serviceName => 'Сервис атауы';

  @override
  String get serviceOperationData => 'Сервис жұмысы туралы деректер';

  @override
  String get services => 'Қызметтер';

  @override
  String get servicesShort => 'Қызметтер:';

  @override
  String get serviceType => 'Сервис түрі';

  @override
  String get offeringsAmount => 'Қызмет бағасы';

  @override
  String get kazakh => 'Қазақша';

  @override
  String get language => 'Тіл';

  @override
  String get russian => 'Русский';

  @override
  String get settings => 'Настройки';

  @override
  String get currentlyWashing => 'Қазір жуылуда';

  @override
  String get empty => 'Бос';

  @override
  String get loading => 'Жүктелуде...';

  @override
  String get newUser => 'Жаңа пайдаланушы';

  @override
  String get no => 'Жоқ';

  @override
  String get notPaid => 'Төленбеген';

  @override
  String get notSelected => 'Таңдалмаған';

  @override
  String get notSpecified => 'Көрсетілмеген';

  @override
  String get status => 'Мәртебесі';

  @override
  String get successfully => 'Сәтті!';

  @override
  String get uniqueUser => 'Бірегей пайдаланушы';

  @override
  String get unknown => 'Белгісіз';

  @override
  String get yes => 'Иә';

  @override
  String get closingTimeFormat => 'Жабылу уақыты сағат:минут:секунд форматында болуы керек';

  @override
  String get day => 'Күн';

  @override
  String get endTime => 'Жұмыс аяқталу уақыты';

  @override
  String get evening => 'Кеш';

  @override
  String get morning => 'Таң';

  @override
  String get night => 'Түн';

  @override
  String get openingTimeBeforeClosingTime => 'Ашылу уақыты жабылу уақытынан ерте болуы керек';

  @override
  String get openingTimeFormat => 'Ашылу уақыты сағат:минут:секунд форматында болуы керек';

  @override
  String get recordDate => 'Жазылу күні';

  @override
  String get recordTime => 'Жазылу уақыты';

  @override
  String get roundTheClock => 'Тәулік бойы';

  @override
  String get selectEndTime => 'Жұмыс аяқталу уақытын таңдаңыз';

  @override
  String get selectStartTime => 'Жұмыс басталу уақытын таңдаңыз';

  @override
  String get startTime => 'Жұмыс басталу уақыты';

  @override
  String get workSchedule => 'Жұмыс кестесі';

  @override
  String get comingSoon => 'Жақында';

  @override
  String get confirmButton => 'Растау';

  @override
  String get filters => 'Сүзгілер';

  @override
  String get name => 'Аты';

  @override
  String get nothingFound => 'Ештеңе табылмады';

  @override
  String get record => 'Жазылу';

  @override
  String get enterAmount => 'Бағасын енгізіңіз';

  @override
  String get numberOfBoxes => 'Бокстар саны';

  @override
  String get numberOfBoxesMustBeGreaterThanZero => 'Бокстар саны нөлден көп болуы керек';

  @override
  String get numberOfBoxesMustBeNumber => 'Бокстар саны сан болуы керек';

  @override
  String get someFilesExceedMaxSize => 'Кейбір файлдар максималды 10 МБ өлшемінен асады';

  @override
  String get specifyNumberOfBoxes => 'Бокстар санын көрсетіңіз';

  @override
  String get confirmCompleteWashing => 'Жууды аяқтағыңыз келетініне сенімдісіз бе?';

  @override
  String get confirmDeleteRecord => 'Бұл жазылуды жойғыңыз келетініне сенімдісіз бе?';

  @override
  String get confirmStartWashing => 'Жууды бастағыңыз келетініне сенімдісіз бе?';

  @override
  String get completeWashing => 'Жууды аяқтау';

  @override
  String get completeWashingPrompt => 'Жууды аяқтау үшін алдымен тапсырысты төлеу қажет';

  @override
  String get deleteRecord => 'Жазылуды жою';

  @override
  String get orderAlreadyScanned => 'Бұл тапсырыс қазірдің өзінде сканерленген';

  @override
  String get orderCannotBeScanned => 'Бұл тапсырысты сканерлеу мүмкін емес';

  @override
  String get orderInfo => 'Тапсырыс туралы ақпарат';

  @override
  String get selectCarWasherPrompt => 'Тапсырысты бастамас бұрын автожуушыны таңдаңыз';

  @override
  String get startWashing => 'Жууды бастау';

  @override
  String get addConveniences => 'Ыңғайлылық қосу';

  @override
  String get addPhotos => 'Фотосуреттер қосу';

  @override
  String get cashRegisterMenu => 'Касса';

  @override
  String get conveniences => 'Ыңғайлылықтар';

  @override
  String get doNotAcceptOrders => 'Тапсырыстарды қабылдамау';

  @override
  String get mainInformation => 'Негізгі ақпарат';

  @override
  String get notifications => 'Хабарламалар';

  @override
  String get notificationsMenu => 'Хабарламалар';

  @override
  String get organization => 'Ұйым';

  @override
  String get organizationMenu => 'Ұйым';

  @override
  String get photos => 'Фотосуреттер';

  @override
  String get selectConveniences => 'Ыңғайлылықтарды таңдау';

  @override
  String get techSupport => 'Техникалық қолдау';

  @override
  String get call => 'Қоңырау шалу';

  @override
  String get comment => 'Пікір:';

  @override
  String get deleteAccount => 'Тіркелімді жою';

  @override
  String get deleteAccountConfirmation => 'Тіркелімді жою сұранысын жібергіңіз келетініне сенімдісіз бе?';

  @override
  String get deleteAccountRequestSent => 'Тіркелімді жою сұранысы жіберілді. Растауды күтіңіз.';

  @override
  String get deleteAccountTitle => 'Тіркелімді жою';

  @override
  String get logout => 'Шығу';

  @override
  String get reply => 'Жауап:';

  @override
  String get replyToReview => 'Пікірге жауап беру';

  @override
  String get replyToReviewAdded => 'Пікірге жауап қосылды';

  @override
  String get respond => 'Жауап беру';

  @override
  String get reviews => 'Пікірлер';

  @override
  String get reviewsAndRatings => 'Пікірлер мен рейтингтер';

  @override
  String get thanksForReviewSeeYouAgain => 'Пікіріңіз үшін рахмет! Сізді қайта көргенімізге қуаныштымыз';

  @override
  String get writeOnWhatsApp => 'WhatsApp-қа жазу';

  @override
  String get yourReplyShowsServiceLevel => 'Сіздің жауабыңыз қызмет көрсету деңгейін және клиенттерге қарым-қатынасты көрсетуге көмектеседі';
}
