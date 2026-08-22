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

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonReject.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get commonReject;

  /// No description provided for @commonAccept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get commonAccept;

  /// No description provided for @commonNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get commonNext;

  /// No description provided for @commonError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get commonError;

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

  /// No description provided for @authLogout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get authLogout;

  /// No description provided for @authCity.
  ///
  /// In en, this message translates to:
  /// **'city'**
  String get authCity;

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

  /// No description provided for @authOtpSuccess.
  ///
  /// In en, this message translates to:
  /// **'Verification successful'**
  String get authOtpSuccess;

  /// No description provided for @uploadedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Uploaded Successfully'**
  String get uploadedSuccessfully;

  /// No description provided for @uploadYourInformation.
  ///
  /// In en, this message translates to:
  /// **'Upload your Information'**
  String get uploadYourInformation;

  /// No description provided for @nationalId.
  ///
  /// In en, this message translates to:
  /// **'National ID'**
  String get nationalId;

  /// No description provided for @driverLicense.
  ///
  /// In en, this message translates to:
  /// **'Driver License'**
  String get driverLicense;

  /// No description provided for @mechanicCard.
  ///
  /// In en, this message translates to:
  /// **'Mechanic Card'**
  String get mechanicCard;

  /// No description provided for @vehiclePlate.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Plate'**
  String get vehiclePlate;

  /// No description provided for @insurancePolicy.
  ///
  /// In en, this message translates to:
  /// **'Insurance Policy'**
  String get insurancePolicy;

  /// No description provided for @vehicleType.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Type'**
  String get vehicleType;

  /// No description provided for @vehicleModel.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Model'**
  String get vehicleModel;

  /// No description provided for @vehicleColor.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Color'**
  String get vehicleColor;

  /// No description provided for @vehicleYear.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Year'**
  String get vehicleYear;

  /// No description provided for @pickImage.
  ///
  /// In en, this message translates to:
  /// **'Pick Image'**
  String get pickImage;

  /// No description provided for @uploadDocuments.
  ///
  /// In en, this message translates to:
  /// **'Upload Documents'**
  String get uploadDocuments;

  /// No description provided for @imageIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Image is required'**
  String get imageIsRequired;

  /// No description provided for @profileProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileProfile;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

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

  /// No description provided for @validationRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get validationRequired;

  /// No description provided for @validationEmailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get validationEmailRequired;

  /// No description provided for @validationEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get validationEmailInvalid;

  /// No description provided for @validationPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get validationPasswordRequired;

  /// No description provided for @validationPasswordWeak.
  ///
  /// In en, this message translates to:
  /// **'Weak password (uppercase, lowercase, number, symbol)'**
  String get validationPasswordWeak;

  /// No description provided for @validationPhoneRequired.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required'**
  String get validationPhoneRequired;

  /// No description provided for @validationPhoneInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get validationPhoneInvalid;

  /// No description provided for @validationPasswordsNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get validationPasswordsNotMatch;

  /// No description provided for @homeGettingLocation.
  ///
  /// In en, this message translates to:
  /// **'Getting your location...'**
  String get homeGettingLocation;

  /// No description provided for @homeEnableLocationPermission.
  ///
  /// In en, this message translates to:
  /// **'Enable location permission'**
  String get homeEnableLocationPermission;

  /// No description provided for @homeWaitingForLocation.
  ///
  /// In en, this message translates to:
  /// **'Waiting for location...'**
  String get homeWaitingForLocation;

  /// No description provided for @homeMyLocation.
  ///
  /// In en, this message translates to:
  /// **'My Location'**
  String get homeMyLocation;

  /// No description provided for @homeOffline.
  ///
  /// In en, this message translates to:
  /// **'You\'re Offline'**
  String get homeOffline;

  /// No description provided for @homeGoOnlineHint.
  ///
  /// In en, this message translates to:
  /// **'Go online to start accepting rides'**
  String get homeGoOnlineHint;

  /// No description provided for @homeStatusOnline.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get homeStatusOnline;

  /// No description provided for @homeStatusGoOnline.
  ///
  /// In en, this message translates to:
  /// **'Go Online'**
  String get homeStatusGoOnline;

  /// No description provided for @homeLookingForPassengers.
  ///
  /// In en, this message translates to:
  /// **'Looking for passengers'**
  String get homeLookingForPassengers;

  /// No description provided for @homeSearching.
  ///
  /// In en, this message translates to:
  /// **'Searching'**
  String get homeSearching;

  /// No description provided for @homeSos.
  ///
  /// In en, this message translates to:
  /// **'SOS'**
  String get homeSos;

  /// No description provided for @commonGotIt.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get commonGotIt;

  /// No description provided for @commonDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get commonDone;

  /// No description provided for @commonSubmitting.
  ///
  /// In en, this message translates to:
  /// **'Submitting...'**
  String get commonSubmitting;

  /// No description provided for @commonMin.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get commonMin;

  /// No description provided for @commonCurrencySyria.
  ///
  /// In en, this message translates to:
  /// **'S.P'**
  String get commonCurrencySyria;

  /// No description provided for @radiusTitle.
  ///
  /// In en, this message translates to:
  /// **'Ride Radius'**
  String get radiusTitle;

  /// No description provided for @radiusSubtitle.
  ///
  /// In en, this message translates to:
  /// **'How far will you accept rides?'**
  String get radiusSubtitle;

  /// No description provided for @radiusConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm Radius'**
  String get radiusConfirm;

  /// No description provided for @radiusKm.
  ///
  /// In en, this message translates to:
  /// **'{count} km'**
  String radiusKm(Object count);

  /// No description provided for @rideRequestNew.
  ///
  /// In en, this message translates to:
  /// **'New Ride Request'**
  String get rideRequestNew;

  /// No description provided for @rideRequestFailedToLoad.
  ///
  /// In en, this message translates to:
  /// **'Failed to load'**
  String get rideRequestFailedToLoad;

  /// No description provided for @rideRequestSeconds.
  ///
  /// In en, this message translates to:
  /// **'{seconds}s'**
  String rideRequestSeconds(Object seconds);

  /// No description provided for @rideRequestNight.
  ///
  /// In en, this message translates to:
  /// **'Night'**
  String get rideRequestNight;

  /// No description provided for @rideRequestPickup.
  ///
  /// In en, this message translates to:
  /// **'Pickup'**
  String get rideRequestPickup;

  /// No description provided for @rideRequestDropOff.
  ///
  /// In en, this message translates to:
  /// **'Drop-off'**
  String get rideRequestDropOff;

  /// No description provided for @rideRequestAccept.
  ///
  /// In en, this message translates to:
  /// **'Accept Ride'**
  String get rideRequestAccept;

  /// No description provided for @rideRequestStopsAlongTheWay.
  ///
  /// In en, this message translates to:
  /// **'{count} stop{suffix} along the way'**
  String rideRequestStopsAlongTheWay(Object count, Object suffix);

  /// No description provided for @tripArrivedCheck.
  ///
  /// In en, this message translates to:
  /// **'Arrived ✓'**
  String get tripArrivedCheck;

  /// No description provided for @tripAcceptedCheck.
  ///
  /// In en, this message translates to:
  /// **'Trip Accepted ✓'**
  String get tripAcceptedCheck;

  /// No description provided for @tripId.
  ///
  /// In en, this message translates to:
  /// **'ID #{id}'**
  String tripId(Object id);

  /// No description provided for @tripMarkAsArrived.
  ///
  /// In en, this message translates to:
  /// **'Mark as Arrived'**
  String get tripMarkAsArrived;

  /// No description provided for @tripSlideToStart.
  ///
  /// In en, this message translates to:
  /// **'Slide to start trip'**
  String get tripSlideToStart;

  /// No description provided for @tripOnTrip.
  ///
  /// In en, this message translates to:
  /// **'On Trip'**
  String get tripOnTrip;

  /// No description provided for @tripElapsed.
  ///
  /// In en, this message translates to:
  /// **'elapsed'**
  String get tripElapsed;

  /// No description provided for @tripSlideToEnd.
  ///
  /// In en, this message translates to:
  /// **'Slide to end trip'**
  String get tripSlideToEnd;

  /// No description provided for @tripStopLabel.
  ///
  /// In en, this message translates to:
  /// **'STOP {order}'**
  String tripStopLabel(Object order);

  /// No description provided for @tripCancelTitle.
  ///
  /// In en, this message translates to:
  /// **'Cancel Trip'**
  String get tripCancelTitle;

  /// No description provided for @tripCancelConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to cancel this trip? This action cannot be undone.'**
  String get tripCancelConfirm;

  /// No description provided for @tripCancelNo.
  ///
  /// In en, this message translates to:
  /// **'No, Keep it'**
  String get tripCancelNo;

  /// No description provided for @tripCancelYes.
  ///
  /// In en, this message translates to:
  /// **'Yes, Cancel'**
  String get tripCancelYes;

  /// No description provided for @tripFreeWaitTime.
  ///
  /// In en, this message translates to:
  /// **'Free wait time: {time}'**
  String tripFreeWaitTime(Object time);

  /// No description provided for @tripWaitTimeExceeded.
  ///
  /// In en, this message translates to:
  /// **'Wait time exceeded'**
  String get tripWaitTimeExceeded;

  /// No description provided for @tripSummaryTotalFare.
  ///
  /// In en, this message translates to:
  /// **'Total Fare'**
  String get tripSummaryTotalFare;

  /// No description provided for @tripSummaryDistance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get tripSummaryDistance;

  /// No description provided for @tripSummaryDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get tripSummaryDuration;

  /// No description provided for @tripSummaryOriginalFare.
  ///
  /// In en, this message translates to:
  /// **'Original Fare'**
  String get tripSummaryOriginalFare;

  /// No description provided for @tripSummaryDiscount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get tripSummaryDiscount;

  /// No description provided for @tripSummaryCoupon.
  ///
  /// In en, this message translates to:
  /// **' (Coupon)'**
  String get tripSummaryCoupon;

  /// No description provided for @tripSummaryCommission.
  ///
  /// In en, this message translates to:
  /// **'Platform Commission'**
  String get tripSummaryCommission;

  /// No description provided for @tripSummaryEarnings.
  ///
  /// In en, this message translates to:
  /// **'Your Earnings'**
  String get tripSummaryEarnings;

  /// No description provided for @tripSummaryTripRated.
  ///
  /// In en, this message translates to:
  /// **'Trip Rated'**
  String get tripSummaryTripRated;

  /// No description provided for @tripSummaryDurationFormatMinsSecs.
  ///
  /// In en, this message translates to:
  /// **'{mins}m {secs}s'**
  String tripSummaryDurationFormatMinsSecs(Object mins, Object secs);

  /// No description provided for @tripSummaryDurationFormatMins.
  ///
  /// In en, this message translates to:
  /// **'{mins} min'**
  String tripSummaryDurationFormatMins(Object mins);

  /// No description provided for @tripSummaryDurationFormatSecs.
  ///
  /// In en, this message translates to:
  /// **'{secs} sec'**
  String tripSummaryDurationFormatSecs(Object secs);

  /// No description provided for @tripCancelledByAdmin.
  ///
  /// In en, this message translates to:
  /// **'Trip Cancelled by Admin'**
  String get tripCancelledByAdmin;

  /// No description provided for @tripCancelledByRider.
  ///
  /// In en, this message translates to:
  /// **'Trip Cancelled by Rider'**
  String get tripCancelledByRider;

  /// No description provided for @tripCancelledByAdminSubtitle.
  ///
  /// In en, this message translates to:
  /// **'An administrator has ended this trip. You are now available for new rides.'**
  String get tripCancelledByAdminSubtitle;

  /// No description provided for @tripCancelledByRiderSubtitle.
  ///
  /// In en, this message translates to:
  /// **'The rider has cancelled the trip. You are now available for new rides.'**
  String get tripCancelledByRiderSubtitle;

  /// No description provided for @drawerMyProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get drawerMyProfile;

  /// No description provided for @drawerWallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get drawerWallet;

  /// No description provided for @drawerRideHistory.
  ///
  /// In en, this message translates to:
  /// **'Ride History'**
  String get drawerRideHistory;

  /// No description provided for @drawerDocuments.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get drawerDocuments;

  /// No description provided for @drawerSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get drawerSettings;

  /// No description provided for @drawerLogout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get drawerLogout;

  /// No description provided for @drawerLogoutConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get drawerLogoutConfirm;

  /// No description provided for @drawerLogoutFailed.
  ///
  /// In en, this message translates to:
  /// **'Logout failed'**
  String get drawerLogoutFailed;

  /// No description provided for @docsUploadDocument.
  ///
  /// In en, this message translates to:
  /// **'Upload Document'**
  String get docsUploadDocument;

  /// No description provided for @docsFilterAll.
  ///
  /// In en, this message translates to:
  /// **'All Documents'**
  String get docsFilterAll;

  /// No description provided for @docsFilterVerified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get docsFilterVerified;

  /// No description provided for @docsFilterPending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get docsFilterPending;

  /// No description provided for @docsFilterRejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get docsFilterRejected;

  /// No description provided for @docsFilterExpired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get docsFilterExpired;

  /// No description provided for @docsNoDocumentsFound.
  ///
  /// In en, this message translates to:
  /// **'No Documents Found'**
  String get docsNoDocumentsFound;

  /// No description provided for @docsNoDocumentsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You have no uploaded driver documents registered at this time.'**
  String get docsNoDocumentsSubtitle;

  /// No description provided for @docsReloadDocuments.
  ///
  /// In en, this message translates to:
  /// **'Reload Documents'**
  String get docsReloadDocuments;

  /// No description provided for @docsNoMatchFilter.
  ///
  /// In en, this message translates to:
  /// **'No documents match this filter'**
  String get docsNoMatchFilter;

  /// No description provided for @docsResetFilter.
  ///
  /// In en, this message translates to:
  /// **'Reset Filter to All'**
  String get docsResetFilter;

  /// No description provided for @docsFailedToLoad.
  ///
  /// In en, this message translates to:
  /// **'Failed to Load Documents'**
  String get docsFailedToLoad;

  /// No description provided for @docsFailedToLoadSubtitle.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred while fetching your documents.'**
  String get docsFailedToLoadSubtitle;

  /// No description provided for @docsTypeLicense.
  ///
  /// In en, this message translates to:
  /// **'Driver License'**
  String get docsTypeLicense;

  /// No description provided for @docsTypeInsurance.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Insurance'**
  String get docsTypeInsurance;

  /// No description provided for @docsTypeMechanic.
  ///
  /// In en, this message translates to:
  /// **'Mechanic Card'**
  String get docsTypeMechanic;

  /// No description provided for @docsTypeIdentity.
  ///
  /// In en, this message translates to:
  /// **'National Identity Card'**
  String get docsTypeIdentity;

  /// No description provided for @docsTypeOther.
  ///
  /// In en, this message translates to:
  /// **'Other Document'**
  String get docsTypeOther;

  /// No description provided for @docsImageRequired.
  ///
  /// In en, this message translates to:
  /// **'Document image file is required'**
  String get docsImageRequired;

  /// No description provided for @docsUploadSuccess.
  ///
  /// In en, this message translates to:
  /// **'Document uploaded successfully!'**
  String get docsUploadSuccess;

  /// No description provided for @docsUploadNewHeader.
  ///
  /// In en, this message translates to:
  /// **'Upload New Document'**
  String get docsUploadNewHeader;

  /// No description provided for @docsUploadNewSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Submit document for verification'**
  String get docsUploadNewSubtitle;

  /// No description provided for @docsTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Document Type'**
  String get docsTypeLabel;

  /// No description provided for @docsIssuedDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Issued Date (Optional)'**
  String get docsIssuedDateLabel;

  /// No description provided for @docsExpirationDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Expiration Date (Optional)'**
  String get docsExpirationDateLabel;

  /// No description provided for @docsTapToChoose.
  ///
  /// In en, this message translates to:
  /// **'Tap to choose document image'**
  String get docsTapToChoose;

  /// No description provided for @docsStatusOverview.
  ///
  /// In en, this message translates to:
  /// **'Document Status Overview'**
  String get docsStatusOverview;

  /// No description provided for @docsFailedToLoadImage.
  ///
  /// In en, this message translates to:
  /// **'Failed to load image'**
  String get docsFailedToLoadImage;

  /// No description provided for @docsZoomHint.
  ///
  /// In en, this message translates to:
  /// **'Use tow fingers to zoom'**
  String get docsZoomHint;

  /// No description provided for @docsStatusPendingApproval.
  ///
  /// In en, this message translates to:
  /// **'Pending Approval'**
  String get docsStatusPendingApproval;

  /// No description provided for @docsRejectionReasonLabel.
  ///
  /// In en, this message translates to:
  /// **'Rejection Reason'**
  String get docsRejectionReasonLabel;

  /// No description provided for @docsIssuedDateStat.
  ///
  /// In en, this message translates to:
  /// **'Issued Date'**
  String get docsIssuedDateStat;

  /// No description provided for @docsExpiryDateStat.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get docsExpiryDateStat;

  /// No description provided for @docsHideTechDetails.
  ///
  /// In en, this message translates to:
  /// **'Hide Technical Details'**
  String get docsHideTechDetails;

  /// No description provided for @docsViewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get docsViewDetails;

  /// No description provided for @docsDetailId.
  ///
  /// In en, this message translates to:
  /// **'Document ID'**
  String get docsDetailId;

  /// No description provided for @docsDetailProfileId.
  ///
  /// In en, this message translates to:
  /// **'Driver Profile ID'**
  String get docsDetailProfileId;

  /// No description provided for @docsDetailAdminId.
  ///
  /// In en, this message translates to:
  /// **'Verified By Admin ID'**
  String get docsDetailAdminId;

  /// No description provided for @docsDetailVerifiedAt.
  ///
  /// In en, this message translates to:
  /// **'Verified At'**
  String get docsDetailVerifiedAt;

  /// No description provided for @docsDetailUploadedAt.
  ///
  /// In en, this message translates to:
  /// **'Uploaded At'**
  String get docsDetailUploadedAt;

  /// No description provided for @docsDetailMeta.
  ///
  /// In en, this message translates to:
  /// **'Meta JSON'**
  String get docsDetailMeta;

  /// No description provided for @profileCity.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get profileCity;

  /// No description provided for @profileSaveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get profileSaveChanges;

  /// No description provided for @walletFailedToLoad.
  ///
  /// In en, this message translates to:
  /// **'Failed to load wallet data'**
  String get walletFailedToLoad;

  /// No description provided for @walletEarningsSummary.
  ///
  /// In en, this message translates to:
  /// **'Earnings Summary'**
  String get walletEarningsSummary;

  /// No description provided for @walletRecentTransactions.
  ///
  /// In en, this message translates to:
  /// **'Recent Transactions'**
  String get walletRecentTransactions;

  /// No description provided for @walletNoTransactions.
  ///
  /// In en, this message translates to:
  /// **'No recent transactions'**
  String get walletNoTransactions;

  /// No description provided for @walletAvailableBalance.
  ///
  /// In en, this message translates to:
  /// **'Available Balance'**
  String get walletAvailableBalance;

  /// No description provided for @walletTotalEarned.
  ///
  /// In en, this message translates to:
  /// **'Total Earned'**
  String get walletTotalEarned;

  /// No description provided for @walletTotalWithdrawn.
  ///
  /// In en, this message translates to:
  /// **'Total Withdrawn'**
  String get walletTotalWithdrawn;

  /// No description provided for @walletToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get walletToday;

  /// No description provided for @walletThisWeek.
  ///
  /// In en, this message translates to:
  /// **'This Week'**
  String get walletThisWeek;

  /// No description provided for @walletThisMonth.
  ///
  /// In en, this message translates to:
  /// **'This Month'**
  String get walletThisMonth;

  /// No description provided for @walletTripsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} trips'**
  String walletTripsCount(Object count);

  /// No description provided for @walletWithdraw.
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get walletWithdraw;

  /// No description provided for @walletHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get walletHistory;

  /// No description provided for @walletStatement.
  ///
  /// In en, this message translates to:
  /// **'Statement'**
  String get walletStatement;

  /// No description provided for @ratingCommentRequiredError.
  ///
  /// In en, this message translates to:
  /// **'A comment or at least one tag is required for ratings of 2 stars or below.'**
  String get ratingCommentRequiredError;

  /// No description provided for @ratingWhatStoodOut.
  ///
  /// In en, this message translates to:
  /// **'What stood out? (optional)'**
  String get ratingWhatStoodOut;

  /// No description provided for @ratingWhatWentWrong.
  ///
  /// In en, this message translates to:
  /// **'What went wrong? (Tag or comment required)'**
  String get ratingWhatWentWrong;

  /// No description provided for @ratingMore.
  ///
  /// In en, this message translates to:
  /// **'More...'**
  String get ratingMore;

  /// No description provided for @ratingRateRiderName.
  ///
  /// In en, this message translates to:
  /// **'Rate {name}'**
  String ratingRateRiderName(Object name);

  /// No description provided for @ratingRateRider.
  ///
  /// In en, this message translates to:
  /// **'Rate Rider'**
  String get ratingRateRider;

  /// No description provided for @ratingSelectScore.
  ///
  /// In en, this message translates to:
  /// **'Select a rating score for this trip'**
  String get ratingSelectScore;

  /// No description provided for @ratingCommentRequiredLabel.
  ///
  /// In en, this message translates to:
  /// **'Comment (Tag or comment required)'**
  String get ratingCommentRequiredLabel;

  /// No description provided for @ratingCommentOptional.
  ///
  /// In en, this message translates to:
  /// **'Comment (optional)'**
  String get ratingCommentOptional;

  /// No description provided for @ratingCommentHint.
  ///
  /// In en, this message translates to:
  /// **'Add a note about this trip…'**
  String get ratingCommentHint;

  /// No description provided for @ratingSubmit.
  ///
  /// In en, this message translates to:
  /// **'Submit Rating'**
  String get ratingSubmit;

  /// No description provided for @settingsPreferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get settingsPreferences;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsDarkThemeEnabled.
  ///
  /// In en, this message translates to:
  /// **'Dark theme enabled'**
  String get settingsDarkThemeEnabled;

  /// No description provided for @settingsLightThemeEnabled.
  ///
  /// In en, this message translates to:
  /// **'Light theme enabled'**
  String get settingsLightThemeEnabled;

  /// No description provided for @historyTitle.
  ///
  /// In en, this message translates to:
  /// **'Ride History'**
  String get historyTitle;

  /// No description provided for @historyFailedToLoad.
  ///
  /// In en, this message translates to:
  /// **'Failed to load history'**
  String get historyFailedToLoad;

  /// No description provided for @historyNoRides.
  ///
  /// In en, this message translates to:
  /// **'No rides found'**
  String get historyNoRides;

  /// No description provided for @historyUnknownPickup.
  ///
  /// In en, this message translates to:
  /// **'Unknown Pickup'**
  String get historyUnknownPickup;

  /// No description provided for @historyUnknownDestination.
  ///
  /// In en, this message translates to:
  /// **'Unknown Destination'**
  String get historyUnknownDestination;

  /// No description provided for @historyUnknownRider.
  ///
  /// In en, this message translates to:
  /// **'Unknown Rider'**
  String get historyUnknownRider;

  /// No description provided for @historyStatusCompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get historyStatusCompleted;

  /// No description provided for @historyStatusCancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get historyStatusCancelled;

  /// No description provided for @historyStatusDriverCancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled by you'**
  String get historyStatusDriverCancelled;

  /// No description provided for @historyStatusInProgress.
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get historyStatusInProgress;

  /// No description provided for @historyDurationMins.
  ///
  /// In en, this message translates to:
  /// **'{mins}m'**
  String historyDurationMins(Object mins);

  /// No description provided for @historyDurationHours.
  ///
  /// In en, this message translates to:
  /// **'{hours}h'**
  String historyDurationHours(Object hours);

  /// No description provided for @historyDurationHoursMins.
  ///
  /// In en, this message translates to:
  /// **'{hours}h {mins}m'**
  String historyDurationHoursMins(Object hours, Object mins);

  /// No description provided for @historyRatingDetails.
  ///
  /// In en, this message translates to:
  /// **'Rating Details'**
  String get historyRatingDetails;

  /// No description provided for @historyYouRated.
  ///
  /// In en, this message translates to:
  /// **'You rated'**
  String get historyYouRated;

  /// No description provided for @historyRiderRatedYou.
  ///
  /// In en, this message translates to:
  /// **'Rider rated you'**
  String get historyRiderRatedYou;

  /// No description provided for @historyNoRatingYet.
  ///
  /// In en, this message translates to:
  /// **'No rating yet'**
  String get historyNoRatingYet;

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

  /// No description provided for @commonRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get commonRetry;

  /// No description provided for @docsMyDocuments.
  ///
  /// In en, this message translates to:
  /// **'My Documents'**
  String get docsMyDocuments;

  /// No description provided for @tapToCaptureVehiclePhoto.
  ///
  /// In en, this message translates to:
  /// **'Tap to capture or choose Vehicle photo'**
  String get tapToCaptureVehiclePhoto;

  /// No description provided for @photoAttached.
  ///
  /// In en, this message translates to:
  /// **'Photo Attached'**
  String get photoAttached;

  /// No description provided for @notificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsTitle;

  /// No description provided for @notificationsAll.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get notificationsAll;

  /// No description provided for @notificationsUnread.
  ///
  /// In en, this message translates to:
  /// **'Unread'**
  String get notificationsUnread;

  /// No description provided for @notificationsMarkAllRead.
  ///
  /// In en, this message translates to:
  /// **'Mark all read'**
  String get notificationsMarkAllRead;

  /// No description provided for @notificationsNoNotifications.
  ///
  /// In en, this message translates to:
  /// **'No notifications yet'**
  String get notificationsNoNotifications;

  /// No description provided for @notificationsYouAreCaughtUp.
  ///
  /// In en, this message translates to:
  /// **'You\'re all caught up!'**
  String get notificationsYouAreCaughtUp;

  /// No description provided for @notificationsErrorFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load notifications'**
  String get notificationsErrorFailed;

  /// No description provided for @notificationsToday.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get notificationsToday;

  /// No description provided for @notificationsYesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get notificationsYesterday;

  /// No description provided for @notificationsEarlier.
  ///
  /// In en, this message translates to:
  /// **'Earlier'**
  String get notificationsEarlier;

  /// No description provided for @notificationsDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get notificationsDelete;

  /// No description provided for @mapPickOriginLocation.
  ///
  /// In en, this message translates to:
  /// **'Pick Origin Location'**
  String get mapPickOriginLocation;

  /// No description provided for @mapPickDestinationLocation.
  ///
  /// In en, this message translates to:
  /// **'Pick Destination Location'**
  String get mapPickDestinationLocation;

  /// No description provided for @mapConfirmLocation.
  ///
  /// In en, this message translates to:
  /// **'Confirm Location'**
  String get mapConfirmLocation;

  /// No description provided for @homeCreateSharedRide.
  ///
  /// In en, this message translates to:
  /// **'Create Shared Ride'**
  String get homeCreateSharedRide;

  /// No description provided for @sharedTripCompleted.
  ///
  /// In en, this message translates to:
  /// **'Trip Completed'**
  String get sharedTripCompleted;

  /// No description provided for @sharedPassengers.
  ///
  /// In en, this message translates to:
  /// **'Passengers'**
  String get sharedPassengers;

  /// No description provided for @sharedTotalDistance.
  ///
  /// In en, this message translates to:
  /// **'Total Distance'**
  String get sharedTotalDistance;

  /// No description provided for @sharedTime.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get sharedTime;

  /// No description provided for @sharedTotalEarnings.
  ///
  /// In en, this message translates to:
  /// **'Total Earnings'**
  String get sharedTotalEarnings;

  /// No description provided for @sharedClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get sharedClose;

  /// No description provided for @sharedLobbyOpen.
  ///
  /// In en, this message translates to:
  /// **'Lobby Open'**
  String get sharedLobbyOpen;

  /// No description provided for @sharedSeatsFilled.
  ///
  /// In en, this message translates to:
  /// **'{occupied} / {max} Seats Filled'**
  String sharedSeatsFilled(Object occupied, Object max);

  /// No description provided for @sharedWaitingPassengers.
  ///
  /// In en, this message translates to:
  /// **'Waiting for passengers to join...'**
  String get sharedWaitingPassengers;

  /// No description provided for @sharedNoPassengersJoined.
  ///
  /// In en, this message translates to:
  /// **'No passengers joined yet.'**
  String get sharedNoPassengersJoined;

  /// No description provided for @sharedCancelRide.
  ///
  /// In en, this message translates to:
  /// **'Cancel Ride'**
  String get sharedCancelRide;

  /// No description provided for @sharedStartBoarding.
  ///
  /// In en, this message translates to:
  /// **'Start Boarding'**
  String get sharedStartBoarding;

  /// No description provided for @sharedBoardingPassengers.
  ///
  /// In en, this message translates to:
  /// **'Boarding Passengers'**
  String get sharedBoardingPassengers;

  /// No description provided for @sharedBoardedCount.
  ///
  /// In en, this message translates to:
  /// **'{boarded}/{total} Boarded'**
  String sharedBoardedCount(Object boarded, Object total);

  /// No description provided for @sharedMarkPassengersInstruction.
  ///
  /// In en, this message translates to:
  /// **'Mark passengers as on board individually as they arrive.'**
  String get sharedMarkPassengersInstruction;

  /// No description provided for @sharedNoPassengersToBoard.
  ///
  /// In en, this message translates to:
  /// **'No passengers to board.'**
  String get sharedNoPassengersToBoard;

  /// No description provided for @sharedStartTrip.
  ///
  /// In en, this message translates to:
  /// **'Start Trip'**
  String get sharedStartTrip;

  /// No description provided for @sharedTripInProgress.
  ///
  /// In en, this message translates to:
  /// **'Trip in Progress'**
  String get sharedTripInProgress;

  /// No description provided for @sharedEnRouteDestinations.
  ///
  /// In en, this message translates to:
  /// **'On route to destinations'**
  String get sharedEnRouteDestinations;

  /// No description provided for @sharedNoActivePassengers.
  ///
  /// In en, this message translates to:
  /// **'No active passengers in trip.'**
  String get sharedNoActivePassengers;

  /// No description provided for @sharedEndTrip.
  ///
  /// In en, this message translates to:
  /// **'End Trip'**
  String get sharedEndTrip;

  /// No description provided for @sharedPassengerNumber.
  ///
  /// In en, this message translates to:
  /// **'Passenger #{id}'**
  String sharedPassengerNumber(Object id);

  /// No description provided for @sharedSeatsCount.
  ///
  /// In en, this message translates to:
  /// **'Seats: {count}'**
  String sharedSeatsCount(Object count);

  /// No description provided for @sharedStatus.
  ///
  /// In en, this message translates to:
  /// **'Status: {status}'**
  String sharedStatus(Object status);

  /// No description provided for @sharedOnBoard.
  ///
  /// In en, this message translates to:
  /// **'On Board'**
  String get sharedOnBoard;

  /// No description provided for @sharedCheckIn.
  ///
  /// In en, this message translates to:
  /// **'Check In'**
  String get sharedCheckIn;

  /// No description provided for @sharedRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get sharedRemove;

  /// No description provided for @sharedDropOff.
  ///
  /// In en, this message translates to:
  /// **'Drop Off'**
  String get sharedDropOff;

  /// No description provided for @sharedDroppedOff.
  ///
  /// In en, this message translates to:
  /// **'Dropped Off'**
  String get sharedDroppedOff;

  /// No description provided for @sharedAccountHolderDroppedOff.
  ///
  /// In en, this message translates to:
  /// **'Account holder dropped off'**
  String get sharedAccountHolderDroppedOff;

  /// No description provided for @sharedCreateSharedRideTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Shared Ride'**
  String get sharedCreateSharedRideTitle;

  /// No description provided for @sharedOrigin.
  ///
  /// In en, this message translates to:
  /// **'Origin'**
  String get sharedOrigin;

  /// No description provided for @sharedDestination.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get sharedDestination;

  /// No description provided for @sharedMaxPassengers.
  ///
  /// In en, this message translates to:
  /// **'Max Passengers'**
  String get sharedMaxPassengers;

  /// No description provided for @sharedDepartureTime.
  ///
  /// In en, this message translates to:
  /// **'Departure Time'**
  String get sharedDepartureTime;

  /// No description provided for @sharedNotes.
  ///
  /// In en, this message translates to:
  /// **'Notes / Details (Optional)'**
  String get sharedNotes;

  /// No description provided for @sharedCreateAndOpenLobby.
  ///
  /// In en, this message translates to:
  /// **'Create & Open Lobby'**
  String get sharedCreateAndOpenLobby;

  /// No description provided for @errorNoInternet.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get errorNoInternet;

  /// No description provided for @errorServer.
  ///
  /// In en, this message translates to:
  /// **'Server error'**
  String get errorServer;

  /// No description provided for @errorValidation.
  ///
  /// In en, this message translates to:
  /// **'Validation error'**
  String get errorValidation;

  /// No description provided for @errorUnauthorized.
  ///
  /// In en, this message translates to:
  /// **'Unauthorized'**
  String get errorUnauthorized;

  /// No description provided for @errorSomethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get errorSomethingWentWrong;

  /// No description provided for @authNoApprovalRequest.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have an approval request yet.'**
  String get authNoApprovalRequest;

  /// No description provided for @authApprovalStatus.
  ///
  /// In en, this message translates to:
  /// **'Account approval status: {status}'**
  String authApprovalStatus(Object status);

  /// No description provided for @sharedCurrentLocation.
  ///
  /// In en, this message translates to:
  /// **'Current Location'**
  String get sharedCurrentLocation;

  /// No description provided for @sharedSelectOriginHint.
  ///
  /// In en, this message translates to:
  /// **'Select origin location'**
  String get sharedSelectOriginHint;

  /// No description provided for @sharedCurrentGps.
  ///
  /// In en, this message translates to:
  /// **'Current GPS'**
  String get sharedCurrentGps;

  /// No description provided for @sharedPickOnMap.
  ///
  /// In en, this message translates to:
  /// **'Pick on Map'**
  String get sharedPickOnMap;

  /// No description provided for @sharedSelectDestinationHint.
  ///
  /// In en, this message translates to:
  /// **'Select destination location'**
  String get sharedSelectDestinationHint;

  /// No description provided for @sharedMaxSeats.
  ///
  /// In en, this message translates to:
  /// **'Max Seats'**
  String get sharedMaxSeats;

  /// No description provided for @sharedSeatsOption.
  ///
  /// In en, this message translates to:
  /// **'{count} Seats'**
  String sharedSeatsOption(Object count);

  /// No description provided for @sharedNotesHint.
  ///
  /// In en, this message translates to:
  /// **'e.g. Leaving near gate 2'**
  String get sharedNotesHint;

  /// No description provided for @sharedRideCancelledToast.
  ///
  /// In en, this message translates to:
  /// **'Shared ride cancelled'**
  String get sharedRideCancelledToast;

  /// No description provided for @sharedDistanceKmFormat.
  ///
  /// In en, this message translates to:
  /// **'{distance} km'**
  String sharedDistanceKmFormat(Object distance);

  /// No description provided for @sharedDurationMinsFormat.
  ///
  /// In en, this message translates to:
  /// **'{mins} mins'**
  String sharedDurationMinsFormat(Object mins);

  /// No description provided for @sharedFareAmountFormat.
  ///
  /// In en, this message translates to:
  /// **'{amount} {currency}'**
  String sharedFareAmountFormat(Object amount, Object currency);

  /// No description provided for @drawerModeration.
  ///
  /// In en, this message translates to:
  /// **'Moderation & Compliance'**
  String get drawerModeration;

  /// No description provided for @moderationTitle.
  ///
  /// In en, this message translates to:
  /// **'Moderation Center'**
  String get moderationTitle;

  /// No description provided for @moderationOverview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get moderationOverview;

  /// No description provided for @moderationViolations.
  ///
  /// In en, this message translates to:
  /// **'Violations'**
  String get moderationViolations;

  /// No description provided for @moderationPenalties.
  ///
  /// In en, this message translates to:
  /// **'Penalties'**
  String get moderationPenalties;

  /// No description provided for @moderationRestrictions.
  ///
  /// In en, this message translates to:
  /// **'Restrictions'**
  String get moderationRestrictions;

  /// No description provided for @moderationAppeals.
  ///
  /// In en, this message translates to:
  /// **'Appeals'**
  String get moderationAppeals;

  /// No description provided for @moderationAccountStatus.
  ///
  /// In en, this message translates to:
  /// **'Account Status'**
  String get moderationAccountStatus;

  /// No description provided for @moderationStatusActive.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get moderationStatusActive;

  /// No description provided for @moderationStatusSuspended.
  ///
  /// In en, this message translates to:
  /// **'Suspended'**
  String get moderationStatusSuspended;

  /// No description provided for @moderationStatusBanned.
  ///
  /// In en, this message translates to:
  /// **'Banned'**
  String get moderationStatusBanned;

  /// No description provided for @moderationStatusWarning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get moderationStatusWarning;

  /// No description provided for @moderationWarningsCount.
  ///
  /// In en, this message translates to:
  /// **'Warnings'**
  String get moderationWarningsCount;

  /// No description provided for @moderationTotalViolations.
  ///
  /// In en, this message translates to:
  /// **'Total Violations'**
  String get moderationTotalViolations;

  /// No description provided for @moderationActivePenalties.
  ///
  /// In en, this message translates to:
  /// **'Active Penalties'**
  String get moderationActivePenalties;

  /// No description provided for @moderationActiveRestrictions.
  ///
  /// In en, this message translates to:
  /// **'Active Restrictions'**
  String get moderationActiveRestrictions;

  /// No description provided for @moderationActiveAppeals.
  ///
  /// In en, this message translates to:
  /// **'Active Appeals'**
  String get moderationActiveAppeals;

  /// No description provided for @moderationNoRestrictions.
  ///
  /// In en, this message translates to:
  /// **'Your account has no active restrictions'**
  String get moderationNoRestrictions;

  /// No description provided for @moderationRestrictionsAlert.
  ///
  /// In en, this message translates to:
  /// **'Active Restrictions on your Account'**
  String get moderationRestrictionsAlert;

  /// No description provided for @moderationRestrictionExpires.
  ///
  /// In en, this message translates to:
  /// **'Expires on: {date}'**
  String moderationRestrictionExpires(Object date);

  /// No description provided for @moderationRestrictionStarts.
  ///
  /// In en, this message translates to:
  /// **'Started on: {date}'**
  String moderationRestrictionStarts(Object date);

  /// No description provided for @moderationSubmitAppeal.
  ///
  /// In en, this message translates to:
  /// **'Submit Appeal'**
  String get moderationSubmitAppeal;

  /// No description provided for @moderationAppealReason.
  ///
  /// In en, this message translates to:
  /// **'Appeal Reason'**
  String get moderationAppealReason;

  /// No description provided for @moderationAppealReasonHint.
  ///
  /// In en, this message translates to:
  /// **'Explain why this penalty should be reviewed...'**
  String get moderationAppealReasonHint;

  /// No description provided for @moderationAppealEvidence.
  ///
  /// In en, this message translates to:
  /// **'Evidence / Proof URL (Optional)'**
  String get moderationAppealEvidence;

  /// No description provided for @moderationAppealEvidenceHint.
  ///
  /// In en, this message translates to:
  /// **'https://example.com/proof.pdf'**
  String get moderationAppealEvidenceHint;

  /// No description provided for @moderationAppealSubmitBtn.
  ///
  /// In en, this message translates to:
  /// **'Submit Appeal'**
  String get moderationAppealSubmitBtn;

  /// No description provided for @moderationAppealSubmitting.
  ///
  /// In en, this message translates to:
  /// **'Submitting...'**
  String get moderationAppealSubmitting;

  /// No description provided for @moderationAppealSuccess.
  ///
  /// In en, this message translates to:
  /// **'Appeal submitted successfully'**
  String get moderationAppealSuccess;

  /// No description provided for @moderationAppealFailure.
  ///
  /// In en, this message translates to:
  /// **'Failed to submit appeal'**
  String get moderationAppealFailure;

  /// No description provided for @moderationAppealPending.
  ///
  /// In en, this message translates to:
  /// **'Pending Review'**
  String get moderationAppealPending;

  /// No description provided for @moderationAppealUnderReview.
  ///
  /// In en, this message translates to:
  /// **'Under Review'**
  String get moderationAppealUnderReview;

  /// No description provided for @moderationAppealApproved.
  ///
  /// In en, this message translates to:
  /// **'Approved'**
  String get moderationAppealApproved;

  /// No description provided for @moderationAppealRejected.
  ///
  /// In en, this message translates to:
  /// **'Rejected'**
  String get moderationAppealRejected;

  /// No description provided for @moderationAdminNotes.
  ///
  /// In en, this message translates to:
  /// **'Admin Notes'**
  String get moderationAdminNotes;

  /// No description provided for @moderationAdminDecision.
  ///
  /// In en, this message translates to:
  /// **'Admin Decision'**
  String get moderationAdminDecision;

  /// No description provided for @moderationReviewedAt.
  ///
  /// In en, this message translates to:
  /// **'Reviewed at: {date}'**
  String moderationReviewedAt(Object date);

  /// No description provided for @moderationSubmittedAt.
  ///
  /// In en, this message translates to:
  /// **'Submitted: {date}'**
  String moderationSubmittedAt(Object date);

  /// No description provided for @moderationSeverity.
  ///
  /// In en, this message translates to:
  /// **'Severity'**
  String get moderationSeverity;

  /// No description provided for @moderationSeverityLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get moderationSeverityLow;

  /// No description provided for @moderationSeverityMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get moderationSeverityMedium;

  /// No description provided for @moderationSeverityHigh.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get moderationSeverityHigh;

  /// No description provided for @moderationSeverityCritical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get moderationSeverityCritical;

  /// No description provided for @moderationPenaltyWarning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get moderationPenaltyWarning;

  /// No description provided for @moderationPenaltyTempSuspension.
  ///
  /// In en, this message translates to:
  /// **'Temporary Suspension'**
  String get moderationPenaltyTempSuspension;

  /// No description provided for @moderationPenaltyPermanentBan.
  ///
  /// In en, this message translates to:
  /// **'Permanent Ban'**
  String get moderationPenaltyPermanentBan;

  /// No description provided for @moderationStatusProcessed.
  ///
  /// In en, this message translates to:
  /// **'Processed'**
  String get moderationStatusProcessed;

  /// No description provided for @moderationSourceTrip.
  ///
  /// In en, this message translates to:
  /// **'Trip #{id}'**
  String moderationSourceTrip(Object id);

  /// No description provided for @moderationNoViolations.
  ///
  /// In en, this message translates to:
  /// **'No violations recorded'**
  String get moderationNoViolations;

  /// No description provided for @moderationNoViolationsDesc.
  ///
  /// In en, this message translates to:
  /// **'Great job! Keep following platform safety rules to maintain a clean record.'**
  String get moderationNoViolationsDesc;

  /// No description provided for @moderationNoPenalties.
  ///
  /// In en, this message translates to:
  /// **'No penalties on your account'**
  String get moderationNoPenalties;

  /// No description provided for @moderationNoPenaltiesDesc.
  ///
  /// In en, this message translates to:
  /// **'You have a clean disciplinary record.'**
  String get moderationNoPenaltiesDesc;

  /// No description provided for @moderationNoAppeals.
  ///
  /// In en, this message translates to:
  /// **'No appeals found'**
  String get moderationNoAppeals;

  /// No description provided for @moderationNoAppealsDesc.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t submitted any appeals yet.'**
  String get moderationNoAppealsDesc;

  /// No description provided for @moderationAppealDetailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Appeal Details'**
  String get moderationAppealDetailsTitle;

  /// No description provided for @moderationLinkedPenalty.
  ///
  /// In en, this message translates to:
  /// **'Linked Penalty'**
  String get moderationLinkedPenalty;

  /// No description provided for @moderationReasonValidation.
  ///
  /// In en, this message translates to:
  /// **'Please enter at least 10 characters explaining your appeal.'**
  String get moderationReasonValidation;

  /// No description provided for @moderationAppealAlreadySubmitted.
  ///
  /// In en, this message translates to:
  /// **'Appeal already submitted for this penalty'**
  String get moderationAppealAlreadySubmitted;

  /// No description provided for @moderationRecentViolations.
  ///
  /// In en, this message translates to:
  /// **'Recent Violations'**
  String get moderationRecentViolations;

  /// No description provided for @moderationPenaltyStarts.
  ///
  /// In en, this message translates to:
  /// **'Starts'**
  String get moderationPenaltyStarts;

  /// No description provided for @moderationPenaltyExpires.
  ///
  /// In en, this message translates to:
  /// **'Expires'**
  String get moderationPenaltyExpires;

  /// No description provided for @moderationEvidenceLink.
  ///
  /// In en, this message translates to:
  /// **'View Attached Evidence'**
  String get moderationEvidenceLink;

  /// No description provided for @sharedCreateOption.
  ///
  /// In en, this message translates to:
  /// **'Create Ride'**
  String get sharedCreateOption;

  /// No description provided for @sharedJoinOption.
  ///
  /// In en, this message translates to:
  /// **'Join Pool'**
  String get sharedJoinOption;

  /// No description provided for @sharedAvailablePoolsTitle.
  ///
  /// In en, this message translates to:
  /// **'Available Pools'**
  String get sharedAvailablePoolsTitle;

  /// No description provided for @sharedAvailablePoolsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Nearby passenger groups waiting for a driver'**
  String get sharedAvailablePoolsSubtitle;

  /// No description provided for @sharedNoAvailablePools.
  ///
  /// In en, this message translates to:
  /// **'No available passenger pools nearby'**
  String get sharedNoAvailablePools;

  /// No description provided for @sharedNoAvailablePoolsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'There are currently no passenger groups within your radius. You can create a new shared ride instead.'**
  String get sharedNoAvailablePoolsSubtitle;

  /// No description provided for @sharedJoinThisPool.
  ///
  /// In en, this message translates to:
  /// **'Join Pool'**
  String get sharedJoinThisPool;

  /// No description provided for @sharedJoiningPool.
  ///
  /// In en, this message translates to:
  /// **'Joining...'**
  String get sharedJoiningPool;

  /// No description provided for @sharedPoolSeatsCount.
  ///
  /// In en, this message translates to:
  /// **'{current}/{max} Seats'**
  String sharedPoolSeatsCount(Object current, Object max);

  /// No description provided for @sharedMeetingPoint.
  ///
  /// In en, this message translates to:
  /// **'Meeting Point'**
  String get sharedMeetingPoint;

  /// No description provided for @sharedDestinationPoint.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get sharedDestinationPoint;

  /// No description provided for @sharedRefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get sharedRefresh;

  /// No description provided for @sharedCreateInstead.
  ///
  /// In en, this message translates to:
  /// **'Create Ride Instead'**
  String get sharedCreateInstead;

  /// No description provided for @missedRideTitle.
  ///
  /// In en, this message translates to:
  /// **'Missed Ride Request'**
  String get missedRideTitle;

  /// No description provided for @reconsiderRideButton.
  ///
  /// In en, this message translates to:
  /// **'Reconsider & Rejoin'**
  String get reconsiderRideButton;

  /// No description provided for @rejoiningQueue.
  ///
  /// In en, this message translates to:
  /// **'Rejoining...'**
  String get rejoiningQueue;

  /// No description provided for @rejoinedQueueSuccess.
  ///
  /// In en, this message translates to:
  /// **'Rejoined queue for ride request'**
  String get rejoinedQueueSuccess;

  /// No description provided for @reconsiderFailed.
  ///
  /// In en, this message translates to:
  /// **'Ride is no longer available'**
  String get reconsiderFailed;

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;
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
