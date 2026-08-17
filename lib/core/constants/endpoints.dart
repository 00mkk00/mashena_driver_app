class Endpoints {
  static const String signup = '/user/drivers';
  static const String login = '/auth/driver/login';
  static const String sendOtp = '/verification-otp/driver/send-otp';
  static const String verifyOtp = '/verification-otp/driver/verify-otp';
  static const String uploadDocs = '/driver-approval-requests';
  static const goOnline = '/driver/go-online';
  static const goOffline = '/driver/go-offline';
  static const updateDriverLocation = '/driver/location';
  static const updateDriverRadius = '/driver/radius';
  static const String rideRequest = '/ride-requests';
  static const String logout = '/auth/logout';
  static const String refresh = '/auth/refresh';
  static const String appSettings = '/app-settings';
  static const String startTrip = '/trips/by-ride/{rideRequestId}/start';

  static const String arriveTrip = '/trips/by-ride/{rideRequestId}/arrive';
  static const String completeTrip = '/trips/by-ride/{rideRequestId}/complete';
  static const String cancelTrip = '/trips/by-ride/{rideRequestId}/cancel';
  static const String driverTripHistory = '/trips/driver/history';
  static const String driverWalletSummary = '/wallets/driver/summary';
  static const String rateTrip = '/trips/{tripId}/rate';
  static const String ratingTags = '/rating-tags';
  static const String driverDocuments = '/driver-documents/me';
  static const String uploadNewDoc = '/driver-documents';
  static const String createSharedRide = '/shared-rides';
  static const String sharedRideReady = '/shared-rides/{id}/ready';
  static const String sharedRideStart = '/shared-rides/{id}/start';
  static const String sharedRideComplete = '/shared-rides/{id}/complete';
  static const String sharedRideCancel = '/shared-rides/{id}/cancel';
  static const String removeSharedRidePassenger =
      '/shared-rides/{id}/passengers/{passengerId}/remove';
  static const String checkInSharedRidePassenger =
      '/shared-rides/{id}/passengers/{passengerId}/check-in';
  static const String onBoardSharedRidePassenger =
      '/shared-rides/{id}/passengers/{passengerId}/on-board';
  static const String dropOffSharedRidePassenger =
      '/shared-rides/{id}/passengers/{passengerId}/dropoff';
  static const String notificationToken = '/notifications/token';
  static const String notifications = '/notifications';
  static const String markAllNotificationsRead = '/notifications/read-all';
  static const String markNotificationRead = '/notifications/{id}/read';
}
