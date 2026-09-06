// ─── Ride Request Model ───────────────────────────────────────────────────────
class RideRequestModel {
  final String id;
  final String passengerName;
  final String passengerPhotoUrl;
  final double passengerRating;
  final int passengerTotalTrips;
  final String pickupAddress;
  final String destinationAddress;
  final double pickupLat;
  final double pickupLng;
  final double destinationLat;
  final double destinationLng;
  final double distanceKm;
  final double estimatedFare;
  final int estimatedMinutes;
  final String paymentMethod; // cash | card | wallet
  final DateTime requestedAt;

  const RideRequestModel({
    required this.id,
    required this.passengerName,
    required this.passengerPhotoUrl,
    required this.passengerRating,
    required this.passengerTotalTrips,
    required this.pickupAddress,
    required this.destinationAddress,
    required this.pickupLat,
    required this.pickupLng,
    required this.destinationLat,
    required this.destinationLng,
    required this.distanceKm,
    required this.estimatedFare,
    required this.estimatedMinutes,
    required this.paymentMethod,
    required this.requestedAt,
  });

  /// Dummy data for UI development
  static RideRequestModel get dummy => RideRequestModel(
    id: 'req_001',
    passengerName: 'Sarah Johnson',
    passengerPhotoUrl: 'https://i.pravatar.cc/150?img=47',
    passengerRating: 4.8,
    passengerTotalTrips: 127,
    pickupAddress: '14 Al Tahrir Square, Downtown',
    destinationAddress: 'Cairo International Airport, Terminal 2',
    pickupLat: 30.0444,
    pickupLng: 31.2357,
    destinationLat: 30.1127,
    destinationLng: 31.4001,
    distanceKm: 24.3,
    estimatedFare: 85.50,
    estimatedMinutes: 32,
    paymentMethod: 'cash',
    requestedAt: DateTime.now(),
  );
}

// ─── Driver Profile Model ─────────────────────────────────────────────────────
class DriverProfileModel {
  final String id;
  final String name;
  final String photoUrl;
  final double rating;
  final int totalTrips;
  final String vehicleModel;
  final String vehiclePlate;
  final double todayEarnings;
  final double weeklyEarnings;

  const DriverProfileModel({
    required this.id,
    required this.name,
    required this.photoUrl,
    required this.rating,
    required this.totalTrips,
    required this.vehicleModel,
    required this.vehiclePlate,
    required this.todayEarnings,
    required this.weeklyEarnings,
  });

  static DriverProfileModel get dummy => const DriverProfileModel(
    id: 'drv_001',
    name: 'Ahmed Hassan',
    photoUrl: 'https://i.pravatar.cc/150?img=12',
    rating: 4.92,
    totalTrips: 1843,
    vehicleModel: 'Toyota Camry 2022',
    vehiclePlate: 'ABC 1234',
    todayEarnings: 320.0,
    weeklyEarnings: 1750.0,
  );
}
