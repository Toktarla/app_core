import 'package:intl/intl.dart' as intl;

import 'app_localizations.g.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get clickHere => 'click here';

  @override
  String get continueText => 'Continue';

  @override
  String get enterSmsCodeSentToNumber => 'Enter the SMS code we sent to the number';

  @override
  String get loginAndRegistration => 'Login and Registration';

  @override
  String get noAccountRegisterService => 'No account yet? Register your service - ';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get sendCodeAgain => 'Send code again';

  @override
  String sendCodeAgainInSeconds(String seconds) {
    return 'Send code again in 00:$seconds';
  }

  @override
  String get smsCode => 'SMS Code';

  @override
  String get add => 'Add';

  @override
  String get apply => 'Apply';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get delete => 'Delete';

  @override
  String get done => 'Done';

  @override
  String get edit => 'Edit';

  @override
  String get exit => 'Exit';

  @override
  String get hide => 'Hide';

  @override
  String get reset => 'Reset';

  @override
  String get retry => 'Retry';

  @override
  String get save => 'Save';

  @override
  String get search => 'Search';

  @override
  String get select => 'Select';

  @override
  String get selectAll => 'Select all';

  @override
  String get unfold => 'Unfold';

  @override
  String get addOnlineBooking => 'Add online booking';

  @override
  String get addToQueue => 'Add to queue';

  @override
  String get allowCameraAccess => 'Allow camera access to continue';

  @override
  String get awaiting => 'Awaiting';

  @override
  String get cashRegister => 'Cash register';

  @override
  String get continueBooking => 'Continue booking';

  @override
  String get editBooking => 'Edit booking';

  @override
  String get history => 'History';

  @override
  String get journal => 'Journal';

  @override
  String get liveQueue => 'Live queue';

  @override
  String get onlineBooking => 'Online booking';

  @override
  String get onlineBookingCreated => 'Online booking created successfully';

  @override
  String get orderAddedToQueue => 'Order successfully added to queue';

  @override
  String get orderSuccessfullyUpdated => 'Order successfully updated';

  @override
  String get queueBooking => 'Queue booking';

  @override
  String get scanSuccessful => 'Scan successful';

  @override
  String get scanned => 'Scanned';

  @override
  String get selectDateTime => 'Select date and time';

  @override
  String get selectedTime => 'Selected time:';

  @override
  String get timeNotSelected => 'Time not selected';

  @override
  String get toSelectAnotherTime => 'To select another time,';

  @override
  String get addCar => 'Add a car';

  @override
  String get car => 'Car';

  @override
  String get carMakesAndModels => 'Car makes and models';

  @override
  String get carServices => 'Car services';

  @override
  String get editCar => 'Edit car';

  @override
  String get enterLicensePlate => 'Enter license plate';

  @override
  String get generation => 'Generation';

  @override
  String get licensePlate => 'License plate';

  @override
  String get make => 'Make';

  @override
  String get model => 'Model';

  @override
  String get selectCarMakeAndModel => 'Select car make and model';

  @override
  String get selectGeneration => 'Select generation';

  @override
  String get selectMake => 'Select make';

  @override
  String get selectModel => 'Select model';

  @override
  String totalCars(int totalCount) {
    return 'Cars: $totalCount';
  }

  @override
  String get addClient => 'Add client';

  @override
  String get client => 'Client';

  @override
  String get clientFound => 'Client found:';

  @override
  String get clientName => 'Client name';

  @override
  String get clients => 'Clients';

  @override
  String get editClient => 'Edit client';

  @override
  String get noClientsYet => 'No clients yet';

  @override
  String totalClients(int totalObjects) {
    return 'Clients: $totalObjects';
  }

  @override
  String get addCompany => 'Add a company';

  @override
  String get companyName => 'Company name';

  @override
  String get editCompany => 'Edit company';

  @override
  String get enterCompanyName => 'Enter company name';

  @override
  String get legalCompanies => 'Legal companies';

  @override
  String get legalEntity => 'Legal entity';

  @override
  String get legalEntityShort => 'Legal entity';

  @override
  String get addEmployee => 'Add employee';

  @override
  String get addAtLeastOneEmployee => 'To record clients in the journal, you need to add at least one washer employee. You can do this right now.';

  @override
  String get admin => 'Administrator';

  @override
  String get administrator => 'Administrator';

  @override
  String get any => 'Any';

  @override
  String get carWasher => 'Car washer';

  @override
  String get carWashers => 'Car Washers';

  @override
  String get employee => 'Employee';

  @override
  String get employeeListEmpty => 'Employee list is empty';

  @override
  String get employeeName => 'Employee name';

  @override
  String get employeePhoneNumber => 'Employee phone number';

  @override
  String get employeeRole => 'Employee role';

  @override
  String get editEmployee => 'Edit employee';

  @override
  String get enterName => 'Enter name';

  @override
  String get enterPhoneNumber => 'Enter phone number';

  @override
  String get phoneNumberNotChangeable => 'Phone number cannot be changed. To change the number, delete the employee and add again.';

  @override
  String get salaryRate => 'Salary rate';

  @override
  String get selectEmployee => 'Select employee';

  @override
  String get selectPercentage => 'Select percentage';

  @override
  String get selectRole => 'Select role';

  @override
  String get staff => 'Staff';

  @override
  String get backToHome => 'Back to home';

  @override
  String get badRequest => 'Invalid request, please check your data and try again';

  @override
  String get connectionTimeout => 'The server response time has expired';

  @override
  String get error => 'Error';

  @override
  String errorType(String error) {
    return 'Error Type: $error';
  }

  @override
  String get initializationFailed => 'Initialization Failed';

  @override
  String get internalServerError => 'Please try again later, an internal error occurred';

  @override
  String get invalidRequestCheckData => 'Invalid request, check your data and try again';

  @override
  String get noAvailableData => 'No available data';

  @override
  String get noInternetConnection => 'No internet connection';

  @override
  String get notFound => 'Data not found';

  @override
  String get requestSuccess => 'Request Success';

  @override
  String get serverResponseTimeExpired => 'Server response time expired';

  @override
  String get serverUnavailableTryLater => 'Try again later, the server is currently unavailable';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String get tooManyRequests => 'Too many requests, please try again later';

  @override
  String get unauthorized => 'Unauthorized';

  @override
  String get chooseTime => 'Choose time';

  @override
  String get coordinates => 'Coordinates';

  @override
  String get coordinatesCannotBeEmpty => 'Coordinates cannot be empty';

  @override
  String get fillRequiredFields => 'Fill in the required fields';

  @override
  String get invalidFormat => 'Invalid format';

  @override
  String get requiredField => 'Required field';

  @override
  String get saveChanges => 'Save changes';

  @override
  String get address => 'Address';

  @override
  String get city => 'City';

  @override
  String get enterAddress => 'Enter address';

  @override
  String get link2GIS => '2GIS link';

  @override
  String get location => 'Location';

  @override
  String get pointOnMap => 'Point on map';

  @override
  String get selectCity => 'Select city';

  @override
  String get specify2GISLink => 'Specify 2GIS link';

  @override
  String get specifyYandexMapsLink => 'Specify Yandex Maps link';

  @override
  String get yandexMapsLink => 'Yandex Maps link';

  @override
  String get acceptPayment => 'Accept payment';

  @override
  String get acceptPaymentQr => 'Accept payment';

  @override
  String get addQr => 'Add QR';

  @override
  String get addQrPayment => 'Add QR payment';

  @override
  String get amount => 'Amount';

  @override
  String get bankName => 'Bank name';

  @override
  String bonusInfo(int inputAmount, int qrAmount) {
    return '$inputAmount ₸ for entry, $qrAmount ₸ for QR booking';
  }

  @override
  String get calculate => 'Calculate';

  @override
  String get calculator => 'Calculator';

  @override
  String get cardNumber => 'Card number';

  @override
  String get discount => 'Discount';

  @override
  String discountPercentage(num discount) {
    return 'Discount: $discount%';
  }

  @override
  String get editAmount => 'Edit amount';

  @override
  String get emptyHere => 'Empty here';

  @override
  String get enterAmountForWithdrawal => 'Enter amount for withdrawal';

  @override
  String get enterBankName => 'Enter bank name';

  @override
  String get enterCardNumber => 'Enter card number';

  @override
  String get enterCorrectCardDetails => 'Enter correct card details';

  @override
  String get expectReceiptWithin24Hours => 'Expect receipt within 24 hours';

  @override
  String get incomeCalculator => 'Income calculator';

  @override
  String get insufficientFundsForWithdrawal => 'Insufficient funds for withdrawal';

  @override
  String minWithdrawalAmount(int amount) {
    return 'Minimum withdrawal amount — $amount ₸';
  }

  @override
  String minWithdrawalAmountIs(int amount) {
    return 'Minimum withdrawal amount is — $amount ₸';
  }

  @override
  String get netIncome => 'Net income';

  @override
  String get noQrPayments => 'No QR payments';

  @override
  String get operationPerformed => 'Operation performed';

  @override
  String get otherExpenses => 'Other expenses';

  @override
  String get paid => 'Paid';

  @override
  String get paidStatus => 'Paid';

  @override
  String get payment => 'Payment';

  @override
  String get paymentMethod => 'Payment method';

  @override
  String get promotionalPrice => 'Promotional price';

  @override
  String get qrPayment => 'QR payment';

  @override
  String get qrPaymentHeader => 'QR Payment';

  @override
  String get qrPhoto => 'QR photo';

  @override
  String get qrScanner => 'QR scanner';

  @override
  String get revenueFromInner => 'Revenue from inner';

  @override
  String get revenueFromOuter => 'Revenue from outer';

  @override
  String get revenueFromQueue => 'Revenue from queue';

  @override
  String get salary => 'Salary';

  @override
  String get salaryExpenses => 'Salary expenses';

  @override
  String get selectPaymentMethod => 'Select payment method';

  @override
  String get sendRequest => 'Send request';

  @override
  String get showToClientToAcceptPayment => 'Show to client to accept payment';

  @override
  String get specifyAmountForWithdrawal => 'Specify amount for withdrawal';

  @override
  String get total => 'Total';

  @override
  String get totalExpenses => 'Total expenses';

  @override
  String get totalRevenue => 'Total revenue';

  @override
  String get withdrawFunds => 'Withdraw funds';

  @override
  String get withdrawalOfFunds => 'Withdrawal of funds';

  @override
  String get withdrawalRequest => 'Withdrawal request';

  @override
  String get withdrawalRequestSentForAmount => 'Withdrawal request sent for amount:';

  @override
  String get withdrawalRequestSentSuccessfully => 'Withdrawal request successfully sent';

  @override
  String get yourBalance => 'Your balance';

  @override
  String countCars(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cars',
      one: '$count car',
    );
    return '$_temp0';
  }

  @override
  String itemCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '$count item',
    );
    return '$_temp0';
  }

  @override
  String liveQueueCars(int liveQueueCount) {
    String _temp0 = intl.Intl.pluralLogic(
      liveQueueCount,
      locale: localeName,
      other: '$liveQueueCount cars in live queue',
      one: '$liveQueueCount car in live queue',
    );
    return '$_temp0';
  }

  @override
  String onlineBookingCars(int onlineCount) {
    String _temp0 = intl.Intl.pluralLogic(
      onlineCount,
      locale: localeName,
      other: '$onlineCount cars booked online',
      one: '$onlineCount car booked online',
    );
    return '$_temp0';
  }

  @override
  String processCountCars(int processCount) {
    String _temp0 = intl.Intl.pluralLogic(
      processCount,
      locale: localeName,
      other: '$processCount cars in process',
      one: '$processCount car in process',
    );
    return '$_temp0';
  }

  @override
  String selectedGenerations(int selectedGenerationsLength) {
    String _temp0 = intl.Intl.pluralLogic(
      selectedGenerationsLength,
      locale: localeName,
      other: '$selectedGenerationsLength generations selected',
      one: '$selectedGenerationsLength generation selected',
    );
    return '$_temp0';
  }

  @override
  String waitingLiveQueueCars(int liveQueueCount) {
    String _temp0 = intl.Intl.pluralLogic(
      liveQueueCount,
      locale: localeName,
      other: '$liveQueueCount cars waiting (queue)',
      one: '$liveQueueCount car waiting (queue)',
    );
    return '$_temp0';
  }

  @override
  String waitingOnlineBookingCars(int onlineCount) {
    String _temp0 = intl.Intl.pluralLogic(
      onlineCount,
      locale: localeName,
      other: '$onlineCount cars waiting (online)',
      one: '$onlineCount car waiting (online)',
    );
    return '$_temp0';
  }

  @override
  String get carCount => 'Number of cars';

  @override
  String get carWashersStatistics => 'Car washers statistics';

  @override
  String get downloadReport => 'Download report';

  @override
  String get report => 'Report';

  @override
  String get selectReportDate => 'Select report date';

  @override
  String get sendReport => 'Send report';

  @override
  String get totalOrders => 'Total orders';

  @override
  String get washingStatistics => 'Washing statistics';

  @override
  String get addBody => 'Add body';

  @override
  String get addService => 'Add service';

  @override
  String get addServiceApplication => 'Add service application';

  @override
  String get addServiceButton => 'Add service';

  @override
  String get applicationSentForModeration => 'Application sent for moderation';

  @override
  String get available => 'Available';

  @override
  String get carWash => 'Car wash';

  @override
  String get completed => 'Completed';

  @override
  String get created => 'New';

  @override
  String get deleteSelected => 'Delete selected';

  @override
  String get description => 'Description:';

  @override
  String get draft => 'Draft';

  @override
  String get enterNameForService => 'Enter service name';

  @override
  String get enterServiceDescription => 'Enter service description';

  @override
  String get enterServiceName => 'Enter service name';

  @override
  String get errorSendingApplicationForModeration => 'Error sending application for moderation';

  @override
  String get fillFormToSendApplication => 'Fill out the form to send an application for adding a car service. All applications are subject to verification before publication.';

  @override
  String get inProgress => 'In process';

  @override
  String get mainPrice => 'Main price';

  @override
  String get mainPriceDescription => 'Main price - a single service cost for cars of this body type. Separate prices can be set for different generations and models.';

  @override
  String get noServicesForSelectedCar => 'No available services for the selected car';

  @override
  String get oilChangePoint => 'Oil change point';

  @override
  String get orderType => 'Order type';

  @override
  String get selectAtLeastOneService => 'Select at least one service';

  @override
  String get selectBodies => 'Select bodies';

  @override
  String get selectServices => 'Select services';

  @override
  String get selectServiceType => 'Select service type';

  @override
  String get selectServiceTypePrompt => 'Select service type';

  @override
  String get selectType => 'Select type';

  @override
  String get sendForModeration => 'Send for moderation';

  @override
  String get separatePrice => 'Separate price';

  @override
  String get separatePriceDescription => 'Separate price - the cost set specifically for the selected generation and car model';

  @override
  String get service => 'Service';

  @override
  String get serviceDescription => 'Service description';

  @override
  String get serviceName => 'Service name';

  @override
  String get serviceOperationData => 'Service Operation Data';

  @override
  String get services => 'Services';

  @override
  String get servicesShort => 'Services:';

  @override
  String get serviceType => 'Service Type';

  @override
  String get offeringsAmount => 'Service amount';

  @override
  String get kazakh => 'Қазақша';

  @override
  String get language => 'Language';

  @override
  String get russian => 'Русский';

  @override
  String get settings => 'Settings';

  @override
  String get currentlyWashing => 'Currently washing';

  @override
  String get empty => 'Empty';

  @override
  String get loading => 'Loading...';

  @override
  String get newUser => 'New user';

  @override
  String get no => 'No';

  @override
  String get notPaid => 'Not paid';

  @override
  String get notSelected => 'Not selected';

  @override
  String get notSpecified => 'Not specified';

  @override
  String get status => 'Status';

  @override
  String get successfully => 'Successfully!';

  @override
  String get uniqueUser => 'Unique user';

  @override
  String get unknown => 'Unknown';

  @override
  String get yes => 'Yes';

  @override
  String get closingTimeFormat => 'Closing time must be in hour:minute:second format';

  @override
  String get day => 'Day';

  @override
  String get endTime => 'End time';

  @override
  String get evening => 'Evening';

  @override
  String get morning => 'Morning';

  @override
  String get night => 'Night';

  @override
  String get openingTimeBeforeClosingTime => 'Opening time must be earlier than closing time';

  @override
  String get openingTimeFormat => 'Opening time must be in hour:minute:second format';

  @override
  String get recordDate => 'Record date';

  @override
  String get recordTime => 'Record time';

  @override
  String get roundTheClock => 'Round the clock';

  @override
  String get selectEndTime => 'Select end time';

  @override
  String get selectStartTime => 'Select start time';

  @override
  String get startTime => 'Start time';

  @override
  String get workSchedule => 'Work schedule';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get confirmButton => 'Confirm';

  @override
  String get filters => 'Filters';

  @override
  String get name => 'Name';

  @override
  String get nothingFound => 'Nothing found';

  @override
  String get record => 'Record';

  @override
  String get enterAmount => 'Enter amount';

  @override
  String get numberOfBoxes => 'Number of boxes';

  @override
  String get numberOfBoxesMustBeGreaterThanZero => 'Number of boxes must be greater than zero';

  @override
  String get numberOfBoxesMustBeNumber => 'Number of boxes must be a number';

  @override
  String get someFilesExceedMaxSize => 'Some files exceed the maximum size of 10 MB';

  @override
  String get specifyNumberOfBoxes => 'Specify the number of boxes';

  @override
  String get confirmCompleteWashing => 'Are you sure you want to complete washing?';

  @override
  String get confirmDeleteRecord => 'Are you sure you want to delete this record?';

  @override
  String get confirmStartWashing => 'Are you sure you want to start washing?';

  @override
  String get completeWashing => 'Complete washing';

  @override
  String get completeWashingPrompt => 'To complete the wash, you must first pay for the order';

  @override
  String get deleteRecord => 'Delete record';

  @override
  String get orderAlreadyScanned => 'This order has already been scanned';

  @override
  String get orderCannotBeScanned => 'This order cannot be scanned';

  @override
  String get orderInfo => 'Order information';

  @override
  String get selectCarWasherPrompt => 'Please select a car washer before starting the order';

  @override
  String get startWashing => 'Start washing';

  @override
  String get addConveniences => 'Add convenience';

  @override
  String get addPhotos => 'Add photos';

  @override
  String get cashRegisterMenu => 'Cash register';

  @override
  String get conveniences => 'Conveniences';

  @override
  String get doNotAcceptOrders => 'Do not accept orders';

  @override
  String get mainInformation => 'Main Information';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsMenu => 'Notifications';

  @override
  String get organization => 'Organization';

  @override
  String get organizationMenu => 'Organization';

  @override
  String get photos => 'Photos';

  @override
  String get selectConveniences => 'Select conveniences';

  @override
  String get techSupport => 'Tech support';

  @override
  String get call => 'Call';

  @override
  String get comment => 'Comment:';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteAccountConfirmation => 'Are you sure you want to send a request to delete your account?';

  @override
  String get deleteAccountRequestSent => 'Account deletion request has been sent. Please wait for confirmation.';

  @override
  String get deleteAccountTitle => 'Delete account';

  @override
  String get logout => 'Logout';

  @override
  String get reply => 'Reply:';

  @override
  String get replyToReview => 'Reply to review';

  @override
  String get replyToReviewAdded => 'Reply to review added';

  @override
  String get respond => 'Respond';

  @override
  String get reviews => 'Reviews';

  @override
  String get reviewsAndRatings => 'Reviews and ratings';

  @override
  String get thanksForReviewSeeYouAgain => 'Thank you for your review! We look forward to seeing you again';

  @override
  String get writeOnWhatsApp => 'Write on WhatsApp';

  @override
  String get yourReplyShowsServiceLevel => 'Your reply will help show the level of service and attitude towards clients';
}
