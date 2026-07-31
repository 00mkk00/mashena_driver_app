// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String get commonCancel => 'إلغاء';

  @override
  String get commonReject => 'رفض';

  @override
  String get commonAccept => 'قبول';

  @override
  String get commonNext => 'التالي';

  @override
  String get commonError => 'حدث خطأ ما';

  @override
  String get onboardingTitle1 => 'استقبل طلبات قريبة منك';

  @override
  String get onboardingSubtitle1 =>
      'استلم طلبات الركاب في منطقتك وابدأ الرحلة خلال ثوانٍ.';

  @override
  String get onboardingTitle2 => 'إدارة رحلاتك بسهولة';

  @override
  String get onboardingSubtitle2 =>
      'تتبّع حالة الرحلة، موقع الراكب، ومسار الوصول بكل سلاسة.';

  @override
  String get onboardingTitle3 => 'أرباح واضحة وآمنة';

  @override
  String get onboardingSubtitle3 =>
      'تابع أرباحك اليومية واستلم مستحقاتك بسرعة وأمان.';

  @override
  String get authLogin => 'تسجيل الدخول';

  @override
  String get authLogout => 'تسجيل الخروج';

  @override
  String get authCity => 'المدينة';

  @override
  String get authFullName => ' الاسم الكامل';

  @override
  String get authPhone => 'رقم الهاتف';

  @override
  String get authSignUp => 'تسجيل';

  @override
  String get authPassword => 'كلمة المرور';

  @override
  String get authOtpSuccess => 'تم تأكيد رمز التحقق';

  @override
  String get uploadedSuccessfully => 'تم الرفع بنجاح';

  @override
  String get uploadYourInformation => 'تحميل معلوماتك';

  @override
  String get nationalId => 'الهوية الوطنية';

  @override
  String get driverLicense => 'رخصة القيادة';

  @override
  String get mechanicCard => 'البطاقة الميكانيكية';

  @override
  String get vehiclePlate => 'لوحة المركبة';

  @override
  String get insurancePolicy => 'بوليصة التأمين';

  @override
  String get vehicleType => 'نوع المركبة';

  @override
  String get vehicleModel => 'طراز المركبة';

  @override
  String get vehicleColor => 'لون المركبة';

  @override
  String get vehicleYear => 'سنة الصنع';

  @override
  String get pickImage => 'اختيار صورة';

  @override
  String get uploadDocuments => 'رفع المستندات';

  @override
  String get imageIsRequired => 'الصورة مطلوبة';

  @override
  String get profileProfile => 'الملف الشخصي';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get otpTitle => 'أدخل رمز التحقق';

  @override
  String get alreadyHaveAnAccount => 'لديك حساب؟';

  @override
  String get confirmPassword => 'تاكيد كلمة المرور';

  @override
  String otpSubtitle(Object phone) {
    return 'تم إرسال رمز إلى $phone';
  }

  @override
  String get otpResend => 'إعادة الإرسال';

  @override
  String get otpVerifyNow => 'تحقق الآن';

  @override
  String get validationRequired => 'هذا الحقل مطلوب';

  @override
  String get validationPasswordsNotMatch => 'كلمات المرور غير متطابقة';

  @override
  String get homeGettingLocation => 'جاري الحصول على موقعك...';

  @override
  String get homeEnableLocationPermission => 'يرجى تفعيل صلاحية الوصول للموقع';

  @override
  String get homeWaitingForLocation => 'في انتظار تحديد الموقع...';

  @override
  String get homeMyLocation => 'موقعي';

  @override
  String get homeOffline => 'أنت غير متصل ';

  @override
  String get homeGoOnlineHint => 'اتصل  لبدء قبول الرحلات';

  @override
  String get homeStatusOnline => 'متصل';

  @override
  String get homeStatusGoOnline => 'اتصل الآن';

  @override
  String get homeLookingForPassengers => 'بحث عن ركاب';

  @override
  String get homeSearching => 'جاري البحث';

  @override
  String get homeSos => 'طوارئ';

  @override
  String get commonGotIt => 'فهمت';

  @override
  String get commonDone => 'تم';

  @override
  String get commonSubmitting => 'جاري الإرسال...';

  @override
  String get commonMin => 'دقيقة';

  @override
  String get commonCurrencySyria => 'ل.س';

  @override
  String get radiusTitle => 'نطاق الطلبات';

  @override
  String get radiusSubtitle => 'ما هي أقصى مسافة لطلب الرحلات؟';

  @override
  String get radiusConfirm => 'تأكيد النطاق';

  @override
  String radiusKm(Object count) {
    return '$count كم';
  }

  @override
  String get rideRequestNew => 'طلب رحلة جديد';

  @override
  String get rideRequestFailedToLoad => 'فشل التحميل';

  @override
  String rideRequestSeconds(Object seconds) {
    return '$secondsث';
  }

  @override
  String get rideRequestNight => 'ليلي';

  @override
  String get rideRequestPickup => 'نقطة الركوب';

  @override
  String get rideRequestDropOff => 'نقطة النزول';

  @override
  String get rideRequestAccept => 'قبول الرحلة';

  @override
  String rideRequestStopsAlongTheWay(Object count, Object suffix) {
    return '$count محطة توقف في الطريق';
  }

  @override
  String get tripArrivedCheck => 'وصلت ✓';

  @override
  String get tripAcceptedCheck => 'تم قبول الرحلة ✓';

  @override
  String tripId(Object id) {
    return 'الرقم #$id';
  }

  @override
  String get tripMarkAsArrived => 'تأكيد الوصول';

  @override
  String get tripSlideToStart => 'اسحب لبدء الرحلة';

  @override
  String get tripOnTrip => 'في الرحلة';

  @override
  String get tripElapsed => 'الوقت المنقضي';

  @override
  String get tripSlideToEnd => 'اسحب لإنهاء الرحلة';

  @override
  String tripStopLabel(Object order) {
    return 'محطة $order';
  }

  @override
  String get tripCancelTitle => 'إلغاء الرحلة';

  @override
  String get tripCancelConfirm =>
      'هل أنت متأكد من إلغاء هذه الرحلة؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get tripCancelNo => 'لا، أبقِ عليها';

  @override
  String get tripCancelYes => 'نعم، إلغاء';

  @override
  String tripFreeWaitTime(Object time) {
    return 'وقت الانتظار المجاني: $time';
  }

  @override
  String get tripWaitTimeExceeded => 'تجاوز وقت الانتظار';

  @override
  String get tripSummaryTotalFare => 'إجمالي الأجرة';

  @override
  String get tripSummaryDistance => 'المسافة';

  @override
  String get tripSummaryDuration => 'المدة';

  @override
  String get tripSummaryOriginalFare => 'الأجرة الأساسية';

  @override
  String get tripSummaryDiscount => 'الخصم';

  @override
  String get tripSummaryCoupon => ' (كوبون)';

  @override
  String get tripSummaryCommission => 'عمولة المنصة';

  @override
  String get tripSummaryEarnings => 'أرباحك';

  @override
  String get tripSummaryTripRated => 'تم تقييم الرحلة';

  @override
  String tripSummaryDurationFormatMinsSecs(Object mins, Object secs) {
    return '$minsد $secsث';
  }

  @override
  String tripSummaryDurationFormatMins(Object mins) {
    return '$mins دقيقة';
  }

  @override
  String tripSummaryDurationFormatSecs(Object secs) {
    return '$secs ثانية';
  }

  @override
  String get tripCancelledByAdmin => 'تم إلغاء الرحلة من قبل المسؤول';

  @override
  String get tripCancelledByRider => 'تم إلغاء الرحلة من قبل الراكب';

  @override
  String get tripCancelledByAdminSubtitle =>
      'أنهى المسؤول هذه الرحلة. أنت الآن متاح لاستقبال رحلات جديدة.';

  @override
  String get tripCancelledByRiderSubtitle =>
      'ألغى الراكب الرحلة. أنت الآن متاح لاستقبال رحلات جديدة.';

  @override
  String get drawerMyProfile => 'ملفي الشخصي';

  @override
  String get drawerWallet => 'المحفظة';

  @override
  String get drawerRideHistory => 'سجل الرحلات';

  @override
  String get drawerDocuments => 'المستندات';

  @override
  String get drawerSettings => 'الإعدادات';

  @override
  String get drawerLogout => 'تسجيل الخروج';

  @override
  String get drawerLogoutConfirm => 'هل أنت متأكد أنك تريد تسجيل الخروج؟';

  @override
  String get drawerLogoutFailed => 'فشل تسجيل الخروج';

  @override
  String get docsUploadDocument => 'تحميل المستند';

  @override
  String get docsFilterAll => 'جميع المستندات';

  @override
  String get docsFilterVerified => 'تم التحقق';

  @override
  String get docsFilterPending => 'قيد الانتظار';

  @override
  String get docsFilterRejected => 'مرفوض';

  @override
  String get docsFilterExpired => 'منتهي الصلاحية';

  @override
  String get docsNoDocumentsFound => 'لم يتم العثور على مستندات';

  @override
  String get docsNoDocumentsSubtitle =>
      'ليس لديك أي مستندات سائق مرفوعة مسجلة في الوقت الحالي.';

  @override
  String get docsReloadDocuments => 'إعادة تحميل المستندات';

  @override
  String get docsNoMatchFilter => 'لا توجد مستندات تطابق هذا التصفية';

  @override
  String get docsResetFilter => 'إعادة تعيين التصفية للكل';

  @override
  String get docsFailedToLoad => 'فشل تحميل المستندات';

  @override
  String get docsFailedToLoadSubtitle =>
      'حدث خطأ غير متوقع أثناء جلب مستنداتك.';

  @override
  String get docsTypeLicense => 'رخصة القيادة';

  @override
  String get docsTypeInsurance => 'وثيقة التأمين';

  @override
  String get docsTypeMechanic => 'رخصة سير المركبة';

  @override
  String get docsTypeIdentity => 'الهوية الوطنية / جواز السفر';

  @override
  String get docsTypeOther => 'مستند آخر';

  @override
  String get docsImageRequired => 'صورة المستند مطلوبة';

  @override
  String get docsUploadSuccess => 'تم رفع المستند بنجاح!';

  @override
  String get docsUploadNewHeader => 'تحميل مستند جديد';

  @override
  String get docsUploadNewSubtitle => 'تقديم المستند للتحقق منه';

  @override
  String get docsTypeLabel => 'نوع المستند';

  @override
  String get docsIssuedDateLabel => 'تاريخ الإصدار (اختياري)';

  @override
  String get docsExpirationDateLabel => 'تاريخ انتهاء الصلاحية (اختياري)';

  @override
  String get docsTapToChoose => 'اضغط لاختيار صورة المستند';

  @override
  String get docsStatusOverview => 'نظرة عامة على حالة المستندات';

  @override
  String get docsFailedToLoadImage => 'فشل تحميل الصورة';

  @override
  String get docsZoomHint => 'استخدم اصبعين للتكبير';

  @override
  String get docsStatusPendingApproval => 'في انتظار الموافقة';

  @override
  String get docsRejectionReasonLabel => 'سبب الرفض';

  @override
  String get docsIssuedDateStat => 'تاريخ الإصدار';

  @override
  String get docsExpiryDateStat => 'تاريخ الانتهاء';

  @override
  String get docsHideTechDetails => 'إخفاء التفاصيل التقنية';

  @override
  String get docsViewDetails => 'عرض التفاصيل';

  @override
  String get docsDetailId => 'معرف المستند';

  @override
  String get docsDetailProfileId => 'معرف ملف السائق';

  @override
  String get docsDetailAdminId => 'معرف المسؤول المعتمد';

  @override
  String get docsDetailVerifiedAt => 'تم التحقق في';

  @override
  String get docsDetailUploadedAt => 'تم الرفع في';

  @override
  String get docsDetailMeta => 'بيانات JSON';

  @override
  String get profileCity => 'المدينة';

  @override
  String get profileSaveChanges => 'حفظ التغييرات';

  @override
  String get walletFailedToLoad => 'فشل تحميل بيانات المحفظة';

  @override
  String get walletEarningsSummary => 'ملخص الأرباح';

  @override
  String get walletRecentTransactions => 'المعالملات الأخيرة';

  @override
  String get walletNoTransactions => 'لا توجد معاملات أخيرة';

  @override
  String get walletAvailableBalance => 'الرصيد المتاح';

  @override
  String get walletTotalEarned => 'إجمالي الأرباح';

  @override
  String get walletTotalWithdrawn => 'إجمالي السحوبات';

  @override
  String get walletToday => 'اليوم';

  @override
  String get walletThisWeek => 'هذا الأسبوع';

  @override
  String get walletThisMonth => 'هذا الشهر';

  @override
  String walletTripsCount(Object count) {
    return '$count رحلات';
  }

  @override
  String get walletWithdraw => 'سحب';

  @override
  String get walletHistory => 'السجل';

  @override
  String get walletStatement => 'كشف حساب';

  @override
  String get ratingCommentRequiredError =>
      'التعليق أو وسم واحد على الأقل مطلوب للتقييمات بنجمتين أو أقل.';

  @override
  String get ratingWhatStoodOut => 'ما المميز؟ (اختياري)';

  @override
  String get ratingWhatWentWrong =>
      'ما الخطأ الذي حدث؟ (الوسم أو التعليق مطلوب)';

  @override
  String get ratingMore => 'المزيد...';

  @override
  String ratingRateRiderName(Object name) {
    return 'تقييم $name';
  }

  @override
  String get ratingRateRider => 'تقييم الراكب';

  @override
  String get ratingSelectScore => 'اختر درجة تقييم لهذه الرحلة';

  @override
  String get ratingCommentRequiredLabel => 'تعليق (الوسم أو التعليق مطلوب)';

  @override
  String get ratingCommentOptional => 'تعليق (اختياري)';

  @override
  String get ratingCommentHint => 'أضف ملاحظة حول هذه الرحلة...';

  @override
  String get ratingSubmit => 'إرسال التقييم';

  @override
  String get settingsPreferences => 'التفضيلات';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get settingsDarkThemeEnabled => 'تم تفعيل المظهر الداكن';

  @override
  String get settingsLightThemeEnabled => 'تم تفعيل المظهر الفاتح';

  @override
  String get historyTitle => 'سجل الرحلات';

  @override
  String get historyFailedToLoad => 'فشل في تحميل السجل';

  @override
  String get historyNoRides => 'لم يتم العثور على رحلات';

  @override
  String get historyUnknownPickup => 'موقع استلام غير معروف';

  @override
  String get historyUnknownDestination => 'وجهة غير معروفة';

  @override
  String get historyUnknownRider => 'راكب غير معروف';

  @override
  String get historyStatusCompleted => 'مكتملة';

  @override
  String get historyStatusCancelled => 'ملغاة';

  @override
  String get historyStatusDriverCancelled => 'ملغاة من قبلك';

  @override
  String get historyStatusInProgress => 'قيد التنفيذ';

  @override
  String historyDurationMins(Object mins) {
    return '$mins د';
  }

  @override
  String historyDurationHours(Object hours) {
    return '$hours س';
  }

  @override
  String historyDurationHoursMins(Object hours, Object mins) {
    return '$hours س $mins د';
  }

  @override
  String get historyRatingDetails => 'تفاصيل التقييم';

  @override
  String get historyYouRated => 'تقييمك';

  @override
  String get historyRiderRatedYou => 'تقييم الراكب لك';

  @override
  String get historyNoRatingYet => 'لا يوجد تقييم بعد';

  @override
  String get settingsSettings => 'الإعدادات';

  @override
  String get settingsDarkMode => 'المظهر الداكن';

  @override
  String get commonRetry => 'إعادة المحاولة';

  @override
  String get docsMyDocuments => 'مستنداتي';
}
