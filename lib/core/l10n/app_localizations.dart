import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
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
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S)!;
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Mashena'**
  String get appName;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Mashena'**
  String get appDescription;

  /// No description provided for @commonOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get commonOk;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonYes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get commonYes;

  /// No description provided for @commonNo.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get commonNo;

  /// No description provided for @commonNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get commonNext;

  /// No description provided for @commonBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get commonBack;

  /// No description provided for @commonSkip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get commonSkip;

  /// No description provided for @commonConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get commonConfirm;

  /// No description provided for @commonSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// No description provided for @commonLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get commonLoading;

  /// No description provided for @commonError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get commonError;

  /// No description provided for @commonRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get commonRetry;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Boost your earnings with every trip'**
  String get onboardingTitle1;

  /// No description provided for @onboardingSubtitle1.
  ///
  /// In en, this message translates to:
  /// **'Accept suitable requests and choose trips that fit your schedule.'**
  String get onboardingSubtitle1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Full control while driving'**
  String get onboardingTitle2;

  /// No description provided for @onboardingSubtitle2.
  ///
  /// In en, this message translates to:
  /// **'See passenger location and the optimal route for faster deliveries.'**
  String get onboardingSubtitle2;

  /// No description provided for @onboardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Guaranteed payments'**
  String get onboardingTitle3;

  /// No description provided for @onboardingSubtitle3.
  ///
  /// In en, this message translates to:
  /// **'Receive your earnings clearly and transparently with detailed reports.'**
  String get onboardingSubtitle3;

  /// No description provided for @authLogin.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get authLogin;

  /// No description provided for @enterYourNumberLogin.
  ///
  /// In en, this message translates to:
  /// **'Enter your number to login'**
  String get enterYourNumberLogin;

  /// No description provided for @enterYourNumberRegister.
  ///
  /// In en, this message translates to:
  /// **'Enter your number to sign up'**
  String get enterYourNumberRegister;

  /// No description provided for @enterYourEmailLogin.
  ///
  /// In en, this message translates to:
  /// **'Enter your email to login'**
  String get enterYourEmailLogin;

  /// No description provided for @enterYourEmailRegister.
  ///
  /// In en, this message translates to:
  /// **'Enter your email to sign up'**
  String get enterYourEmailRegister;

  /// No description provided for @authRegister.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get authRegister;

  /// No description provided for @authLogout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get authLogout;

  /// No description provided for @authSendCode.
  ///
  /// In en, this message translates to:
  /// **'Send Code'**
  String get authSendCode;

  /// No description provided for @authDontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get authDontHaveAnAccount;

  /// No description provided for @authFullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get authFullName;

  /// No description provided for @authPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get authPhone;

  /// No description provided for @authSignUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get authSignUp;

  /// No description provided for @authPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get authPassword;

  /// No description provided for @authForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get authForgotPassword;

  /// No description provided for @authOtpTitle.
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get authOtpTitle;

  /// No description provided for @authOtpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter the code sent to your phone'**
  String get authOtpSubtitle;

  /// No description provided for @authResendOtp.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get authResendOtp;

  /// No description provided for @authOtpSuccess.
  ///
  /// In en, this message translates to:
  /// **'Verification successful'**
  String get authOtpSuccess;

  /// No description provided for @otpResendSuccess.
  ///
  /// In en, this message translates to:
  /// **'Code sent successfully'**
  String get otpResendSuccess;

  /// No description provided for @homeWhereTo.
  ///
  /// In en, this message translates to:
  /// **'Where to?'**
  String get homeWhereTo;

  /// No description provided for @homeCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'Current location'**
  String get homeCurrentLocation;

  /// No description provided for @homeSearchDestination.
  ///
  /// In en, this message translates to:
  /// **'Search destination'**
  String get homeSearchDestination;

  /// No description provided for @rideRequestRide.
  ///
  /// In en, this message translates to:
  /// **'Request Ride'**
  String get rideRequestRide;

  /// No description provided for @rideFindingDriver.
  ///
  /// In en, this message translates to:
  /// **'Finding a driver...'**
  String get rideFindingDriver;

  /// No description provided for @rideDriverOnWay.
  ///
  /// In en, this message translates to:
  /// **'Driver is on the way'**
  String get rideDriverOnWay;

  /// No description provided for @rideDriverArrived.
  ///
  /// In en, this message translates to:
  /// **'Driver arrived'**
  String get rideDriverArrived;

  /// No description provided for @rideTripStarted.
  ///
  /// In en, this message translates to:
  /// **'Trip started'**
  String get rideTripStarted;

  /// No description provided for @rideTripEnded.
  ///
  /// In en, this message translates to:
  /// **'Trip ended'**
  String get rideTripEnded;

  /// No description provided for @rideCancelRide.
  ///
  /// In en, this message translates to:
  /// **'Cancel Ride'**
  String get rideCancelRide;

  /// No description provided for @rideEstimatedTime.
  ///
  /// In en, this message translates to:
  /// **'Estimated time'**
  String get rideEstimatedTime;

  /// No description provided for @rideEstimatedPrice.
  ///
  /// In en, this message translates to:
  /// **'Estimated price'**
  String get rideEstimatedPrice;

  /// No description provided for @paymentPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentPaymentMethod;

  /// No description provided for @paymentCash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get paymentCash;

  /// No description provided for @paymentOnline.
  ///
  /// In en, this message translates to:
  /// **'Online Payment'**
  String get paymentOnline;

  /// No description provided for @paymentTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get paymentTotal;

  /// No description provided for @paymentPayNow.
  ///
  /// In en, this message translates to:
  /// **'Pay Now'**
  String get paymentPayNow;

  /// No description provided for @paymentSuccess.
  ///
  /// In en, this message translates to:
  /// **'Payment successful'**
  String get paymentSuccess;

  /// No description provided for @paymentFailed.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get paymentFailed;

  /// No description provided for @ratingRateDriver.
  ///
  /// In en, this message translates to:
  /// **'Rate Driver'**
  String get ratingRateDriver;

  /// No description provided for @ratingLeaveComment.
  ///
  /// In en, this message translates to:
  /// **'Leave a comment (optional)'**
  String get ratingLeaveComment;

  /// No description provided for @ratingSubmitRating.
  ///
  /// In en, this message translates to:
  /// **'Submit Rating'**
  String get ratingSubmitRating;

  /// No description provided for @profileProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileProfile;

  /// No description provided for @profileEditProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get profileEditProfile;

  /// No description provided for @profileName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get profileName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @profileLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get profileLanguage;

  /// No description provided for @profileNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get profileNotifications;

  /// No description provided for @profilePrivacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get profilePrivacy;

  /// No description provided for @settingsSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsSettings;

  /// No description provided for @settingsDarkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get settingsDarkMode;

  /// No description provided for @settingsChangeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get settingsChangeLanguage;

  /// No description provided for @settingsAboutApp.
  ///
  /// In en, this message translates to:
  /// **'About App'**
  String get settingsAboutApp;

  /// No description provided for @errorsNetwork.
  ///
  /// In en, this message translates to:
  /// **'Check your internet connection'**
  String get errorsNetwork;

  /// No description provided for @errorsUnauthorized.
  ///
  /// In en, this message translates to:
  /// **'Unauthorized access'**
  String get errorsUnauthorized;

  /// No description provided for @errorsLocationPermission.
  ///
  /// In en, this message translates to:
  /// **'Please allow location access'**
  String get errorsLocationPermission;

  /// No description provided for @apiConnectionTimeout.
  ///
  /// In en, this message translates to:
  /// **'Connection timeout'**
  String get apiConnectionTimeout;

  /// No description provided for @apiSendTimeout.
  ///
  /// In en, this message translates to:
  /// **'Send timeout'**
  String get apiSendTimeout;

  /// No description provided for @apiReceiveTimeout.
  ///
  /// In en, this message translates to:
  /// **'Receive timeout'**
  String get apiReceiveTimeout;

  /// No description provided for @apiRequestCancelled.
  ///
  /// In en, this message translates to:
  /// **'Request cancelled'**
  String get apiRequestCancelled;

  /// No description provided for @apiConnectionError.
  ///
  /// In en, this message translates to:
  /// **'Connection error'**
  String get apiConnectionError;

  /// No description provided for @apiCertificateError.
  ///
  /// In en, this message translates to:
  /// **'Certificate error'**
  String get apiCertificateError;

  /// No description provided for @apiBadRequest.
  ///
  /// In en, this message translates to:
  /// **'Bad request'**
  String get apiBadRequest;

  /// No description provided for @apiUnauthorized.
  ///
  /// In en, this message translates to:
  /// **'Unauthorized'**
  String get apiUnauthorized;

  /// No description provided for @apiForbidden.
  ///
  /// In en, this message translates to:
  /// **'Forbidden'**
  String get apiForbidden;

  /// No description provided for @apiNotFound.
  ///
  /// In en, this message translates to:
  /// **'Not found'**
  String get apiNotFound;

  /// No description provided for @apiValidationError.
  ///
  /// In en, this message translates to:
  /// **'Validation error'**
  String get apiValidationError;

  /// No description provided for @apiServerError.
  ///
  /// In en, this message translates to:
  /// **'Server error'**
  String get apiServerError;

  /// No description provided for @apiBadGateway.
  ///
  /// In en, this message translates to:
  /// **'Bad gateway'**
  String get apiBadGateway;

  /// No description provided for @apiServiceUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Service unavailable'**
  String get apiServiceUnavailable;

  /// No description provided for @apiRequestFailed.
  ///
  /// In en, this message translates to:
  /// **'Request failed ({code})'**
  String apiRequestFailed(Object code);

  /// No description provided for @otpTitle.
  ///
  /// In en, this message translates to:
  /// **'Enter verification code'**
  String get otpTitle;

  /// No description provided for @alreadyHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAnAccount;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @otpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A code has been sent to {phone}'**
  String otpSubtitle(Object phone);

  /// No description provided for @otpDidNotReceive.
  ///
  /// In en, this message translates to:
  /// **'Don\'t receive a code?'**
  String get otpDidNotReceive;

  /// No description provided for @otpResend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get otpResend;

  /// No description provided for @otpVerifyNow.
  ///
  /// In en, this message translates to:
  /// **'Verify Now'**
  String get otpVerifyNow;

  /// No description provided for @apiUnknownError.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get apiUnknownError;

  /// No description provided for @cacheError.
  ///
  /// In en, this message translates to:
  /// **'Cache error'**
  String get cacheError;

  /// No description provided for @validationRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get validationRequired;

  /// No description provided for @validationInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get validationInvalidEmail;

  /// No description provided for @validationInvalidPhone.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get validationInvalidPhone;

  /// No description provided for @validationWeakPassword.
  ///
  /// In en, this message translates to:
  /// **'Weak password (uppercase, lowercase, number, symbol)'**
  String get validationWeakPassword;

  /// No description provided for @validationOtpInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid code'**
  String get validationOtpInvalid;

  /// No description provided for @validationMinLength.
  ///
  /// In en, this message translates to:
  /// **'Minimum {min} characters'**
  String validationMinLength(int min);

  /// No description provided for @validationPasswordsNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get validationPasswordsNotMatch;

  /// No description provided for @validationMaxLength.
  ///
  /// In en, this message translates to:
  /// **'Maximum {max} characters'**
  String validationMaxLength(int max);
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return SAr();
    case 'en':
      return SEn();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
