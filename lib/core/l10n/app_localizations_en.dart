// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get commonCancel => 'Cancel';

  @override
  String get commonReject => 'Reject';

  @override
  String get commonAccept => 'Accept';

  @override
  String get commonNext => 'Next';

  @override
  String get commonError => 'Something went wrong';

  @override
  String get onboardingTitle1 => 'Boost your earnings with every trip';

  @override
  String get onboardingSubtitle1 =>
      'Accept suitable requests and choose trips that fit your schedule.';

  @override
  String get onboardingTitle2 => 'Full control while driving';

  @override
  String get onboardingSubtitle2 =>
      'See passenger location and the optimal route for faster deliveries.';

  @override
  String get onboardingTitle3 => 'Guaranteed payments';

  @override
  String get onboardingSubtitle3 =>
      'Receive your earnings clearly and transparently with detailed reports.';

  @override
  String get authLogin => 'Login';

  @override
  String get authLogout => 'Logout';

  @override
  String get authCity => 'city';

  @override
  String get authFullName => 'Full Name';

  @override
  String get authPhone => 'Phone Number';

  @override
  String get authSignUp => 'Sign Up';

  @override
  String get authPassword => 'Password';

  @override
  String get authOtpSuccess => 'Verification successful';

  @override
  String get uploadedSuccessfully => 'Uploaded Successfully';

  @override
  String get uploadYourInformation => 'Upload your Information';

  @override
  String get nationalId => 'National ID';

  @override
  String get driverLicense => 'Driver License';

  @override
  String get mechanicCard => 'Mechanic Card';

  @override
  String get vehiclePlate => 'Vehicle Plate';

  @override
  String get insurancePolicy => 'Insurance Policy';

  @override
  String get vehicleType => 'Vehicle Type';

  @override
  String get vehicleModel => 'Vehicle Model';

  @override
  String get vehicleColor => 'Vehicle Color';

  @override
  String get vehicleYear => 'Vehicle Year';

  @override
  String get pickImage => 'Pick Image';

  @override
  String get uploadDocuments => 'Upload Documents';

  @override
  String get imageIsRequired => 'Image is required';

  @override
  String get profileProfile => 'Profile';

  @override
  String get email => 'Email';

  @override
  String get otpTitle => 'Enter verification code';

  @override
  String get alreadyHaveAnAccount => 'Already have an account?';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String otpSubtitle(Object phone) {
    return 'A code has been sent to $phone';
  }

  @override
  String get otpResend => 'Resend';

  @override
  String get otpVerifyNow => 'Verify Now';

  @override
  String get validationRequired => 'This field is required';

  @override
  String get validationPasswordsNotMatch => 'Passwords do not match';

  @override
  String get homeGettingLocation => 'Getting your location...';

  @override
  String get homeEnableLocationPermission => 'Enable location permission';

  @override
  String get homeWaitingForLocation => 'Waiting for location...';

  @override
  String get homeMyLocation => 'My Location';

  @override
  String get homeOffline => 'You\'re Offline';

  @override
  String get homeGoOnlineHint => 'Go online to start accepting rides';

  @override
  String get homeStatusOnline => 'Online';

  @override
  String get homeStatusGoOnline => 'Go Online';

  @override
  String get homeLookingForPassengers => 'Looking for passengers';

  @override
  String get homeSearching => 'Searching';

  @override
  String get homeSos => 'SOS';

  @override
  String get commonGotIt => 'Got it';

  @override
  String get commonDone => 'Done';

  @override
  String get commonSubmitting => 'Submitting...';

  @override
  String get commonMin => 'min';

  @override
  String get commonCurrencySyria => 'S.P';

  @override
  String get radiusTitle => 'Ride Radius';

  @override
  String get radiusSubtitle => 'How far will you accept rides?';

  @override
  String get radiusConfirm => 'Confirm Radius';

  @override
  String radiusKm(Object count) {
    return '$count km';
  }

  @override
  String get rideRequestNew => 'New Ride Request';

  @override
  String get rideRequestFailedToLoad => 'Failed to load';

  @override
  String rideRequestSeconds(Object seconds) {
    return '${seconds}s';
  }

  @override
  String get rideRequestNight => 'Night';

  @override
  String get rideRequestPickup => 'Pickup';

  @override
  String get rideRequestDropOff => 'Drop-off';

  @override
  String get rideRequestAccept => 'Accept Ride';

  @override
  String rideRequestStopsAlongTheWay(Object count, Object suffix) {
    return '$count stop$suffix along the way';
  }

  @override
  String get tripArrivedCheck => 'Arrived ✓';

  @override
  String get tripAcceptedCheck => 'Trip Accepted ✓';

  @override
  String tripId(Object id) {
    return 'ID #$id';
  }

  @override
  String get tripMarkAsArrived => 'Mark as Arrived';

  @override
  String get tripSlideToStart => 'Slide to start trip';

  @override
  String get tripOnTrip => 'On Trip';

  @override
  String get tripElapsed => 'elapsed';

  @override
  String get tripSlideToEnd => 'Slide to end trip';

  @override
  String tripStopLabel(Object order) {
    return 'STOP $order';
  }

  @override
  String get tripCancelTitle => 'Cancel Trip';

  @override
  String get tripCancelConfirm =>
      'Are you sure you want to cancel this trip? This action cannot be undone.';

  @override
  String get tripCancelNo => 'No, Keep it';

  @override
  String get tripCancelYes => 'Yes, Cancel';

  @override
  String tripFreeWaitTime(Object time) {
    return 'Free wait time: $time';
  }

  @override
  String get tripWaitTimeExceeded => 'Wait time exceeded';

  @override
  String get tripSummaryTotalFare => 'Total Fare';

  @override
  String get tripSummaryDistance => 'Distance';

  @override
  String get tripSummaryDuration => 'Duration';

  @override
  String get tripSummaryOriginalFare => 'Original Fare';

  @override
  String get tripSummaryDiscount => 'Discount';

  @override
  String get tripSummaryCoupon => ' (Coupon)';

  @override
  String get tripSummaryCommission => 'Platform Commission';

  @override
  String get tripSummaryEarnings => 'Your Earnings';

  @override
  String get tripSummaryTripRated => 'Trip Rated';

  @override
  String tripSummaryDurationFormatMinsSecs(Object mins, Object secs) {
    return '${mins}m ${secs}s';
  }

  @override
  String tripSummaryDurationFormatMins(Object mins) {
    return '$mins min';
  }

  @override
  String tripSummaryDurationFormatSecs(Object secs) {
    return '$secs sec';
  }

  @override
  String get tripCancelledByAdmin => 'Trip Cancelled by Admin';

  @override
  String get tripCancelledByRider => 'Trip Cancelled by Rider';

  @override
  String get tripCancelledByAdminSubtitle =>
      'An administrator has ended this trip. You are now available for new rides.';

  @override
  String get tripCancelledByRiderSubtitle =>
      'The rider has cancelled the trip. You are now available for new rides.';

  @override
  String get drawerMyProfile => 'My Profile';

  @override
  String get drawerWallet => 'Wallet';

  @override
  String get drawerRideHistory => 'Ride History';

  @override
  String get drawerDocuments => 'Documents';

  @override
  String get drawerSettings => 'Settings';

  @override
  String get drawerLogout => 'Logout';

  @override
  String get drawerLogoutConfirm => 'Are you sure you want to log out?';

  @override
  String get drawerLogoutFailed => 'Logout failed';

  @override
  String get docsUploadDocument => 'Upload Document';

  @override
  String get docsFilterAll => 'All Documents';

  @override
  String get docsFilterVerified => 'Verified';

  @override
  String get docsFilterPending => 'Pending';

  @override
  String get docsFilterRejected => 'Rejected';

  @override
  String get docsFilterExpired => 'Expired';

  @override
  String get docsNoDocumentsFound => 'No Documents Found';

  @override
  String get docsNoDocumentsSubtitle =>
      'You have no uploaded driver documents registered at this time.';

  @override
  String get docsReloadDocuments => 'Reload Documents';

  @override
  String get docsNoMatchFilter => 'No documents match this filter';

  @override
  String get docsResetFilter => 'Reset Filter to All';

  @override
  String get docsFailedToLoad => 'Failed to Load Documents';

  @override
  String get docsFailedToLoadSubtitle =>
      'An unexpected error occurred while fetching your documents.';

  @override
  String get docsTypeLicense => 'Driver License';

  @override
  String get docsTypeInsurance => 'Vehicle Insurance';

  @override
  String get docsTypeMechanic => 'Mechanic Card';

  @override
  String get docsTypeIdentity => 'National Identity Card';

  @override
  String get docsTypeOther => 'Other Document';

  @override
  String get docsImageRequired => 'Document image file is required';

  @override
  String get docsUploadSuccess => 'Document uploaded successfully!';

  @override
  String get docsUploadNewHeader => 'Upload New Document';

  @override
  String get docsUploadNewSubtitle => 'Submit document for verification';

  @override
  String get docsTypeLabel => 'Document Type';

  @override
  String get docsIssuedDateLabel => 'Issued Date (Optional)';

  @override
  String get docsExpirationDateLabel => 'Expiration Date (Optional)';

  @override
  String get docsTapToChoose => 'Tap to choose document image';

  @override
  String get docsStatusOverview => 'Document Status Overview';

  @override
  String get docsFailedToLoadImage => 'Failed to load image';

  @override
  String get docsZoomHint => 'Use tow fingers to zoom';

  @override
  String get docsStatusPendingApproval => 'Pending Approval';

  @override
  String get docsRejectionReasonLabel => 'Rejection Reason';

  @override
  String get docsIssuedDateStat => 'Issued Date';

  @override
  String get docsExpiryDateStat => 'Expiry Date';

  @override
  String get docsHideTechDetails => 'Hide Technical Details';

  @override
  String get docsViewDetails => 'View Details';

  @override
  String get docsDetailId => 'Document ID';

  @override
  String get docsDetailProfileId => 'Driver Profile ID';

  @override
  String get docsDetailAdminId => 'Verified By Admin ID';

  @override
  String get docsDetailVerifiedAt => 'Verified At';

  @override
  String get docsDetailUploadedAt => 'Uploaded At';

  @override
  String get docsDetailMeta => 'Meta JSON';

  @override
  String get profileCity => 'City';

  @override
  String get profileSaveChanges => 'Save Changes';

  @override
  String get walletFailedToLoad => 'Failed to load wallet data';

  @override
  String get walletEarningsSummary => 'Earnings Summary';

  @override
  String get walletRecentTransactions => 'Recent Transactions';

  @override
  String get walletNoTransactions => 'No recent transactions';

  @override
  String get walletAvailableBalance => 'Available Balance';

  @override
  String get walletTotalEarned => 'Total Earned';

  @override
  String get walletTotalWithdrawn => 'Total Withdrawn';

  @override
  String get walletToday => 'Today';

  @override
  String get walletThisWeek => 'This Week';

  @override
  String get walletThisMonth => 'This Month';

  @override
  String walletTripsCount(Object count) {
    return '$count trips';
  }

  @override
  String get walletWithdraw => 'Withdraw';

  @override
  String get walletHistory => 'History';

  @override
  String get walletStatement => 'Statement';

  @override
  String get ratingCommentRequiredError =>
      'A comment or at least one tag is required for ratings of 2 stars or below.';

  @override
  String get ratingWhatStoodOut => 'What stood out? (optional)';

  @override
  String get ratingWhatWentWrong =>
      'What went wrong? (Tag or comment required)';

  @override
  String get ratingMore => 'More...';

  @override
  String ratingRateRiderName(Object name) {
    return 'Rate $name';
  }

  @override
  String get ratingRateRider => 'Rate Rider';

  @override
  String get ratingSelectScore => 'Select a rating score for this trip';

  @override
  String get ratingCommentRequiredLabel => 'Comment (Tag or comment required)';

  @override
  String get ratingCommentOptional => 'Comment (optional)';

  @override
  String get ratingCommentHint => 'Add a note about this trip…';

  @override
  String get ratingSubmit => 'Submit Rating';

  @override
  String get settingsPreferences => 'Preferences';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsDarkThemeEnabled => 'Dark theme enabled';

  @override
  String get settingsLightThemeEnabled => 'Light theme enabled';

  @override
  String get historyTitle => 'Ride History';

  @override
  String get historyFailedToLoad => 'Failed to load history';

  @override
  String get historyNoRides => 'No rides found';

  @override
  String get historyUnknownPickup => 'Unknown Pickup';

  @override
  String get historyUnknownDestination => 'Unknown Destination';

  @override
  String get historyUnknownRider => 'Unknown Rider';

  @override
  String get historyStatusCompleted => 'Completed';

  @override
  String get historyStatusCancelled => 'Cancelled';

  @override
  String get historyStatusDriverCancelled => 'Cancelled by you';

  @override
  String get historyStatusInProgress => 'In progress';

  @override
  String historyDurationMins(Object mins) {
    return '${mins}m';
  }

  @override
  String historyDurationHours(Object hours) {
    return '${hours}h';
  }

  @override
  String historyDurationHoursMins(Object hours, Object mins) {
    return '${hours}h ${mins}m';
  }

  @override
  String get historyRatingDetails => 'Rating Details';

  @override
  String get historyYouRated => 'You rated';

  @override
  String get historyRiderRatedYou => 'Rider rated you';

  @override
  String get historyNoRatingYet => 'No rating yet';

  @override
  String get settingsSettings => 'Settings';

  @override
  String get settingsDarkMode => 'Dark Mode';

  @override
  String get commonRetry => 'Retry';

  @override
  String get docsMyDocuments => 'My Documents';

  @override
  String get tapToCaptureVehiclePhoto =>
      'Tap to capture or choose Vehicle photo';

  @override
  String get photoAttached => 'Photo Attached';
}
