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
}
