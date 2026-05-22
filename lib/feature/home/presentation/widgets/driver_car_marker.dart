// import 'package:flutter/material.dart';
// import 'package:mashena_driver_app/core/theme/app_colors.dart';

// class DriverCarMarker extends StatelessWidget {
//     final double heading;

//   const DriverCarMarker({super.key, required this.heading});

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         // ── Outer pulsing ring ──────────────────────────────────────────────
//         Container(
//           width: 56,
//           height: 56,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: AppColors.primaryColor.withOpacity(0.12),
//           ),
//         ),

//         // ── Inner solid circle ──────────────────────────────────────────────
//         Container(
//           width: 38,
//           height: 38,
//           decoration: const BoxDecoration(
//             shape: BoxShape.circle,
//             color: AppColors.primaryColor,
//           ),
//         ),

//         // ── Car icon — rotated so it faces up (north) ───────────────────────
//         Transform.rotate(
//           angle: 0, // radians — update from heading stream when available
//           child: const Icon(
//             Icons.directions_car_rounded,
//             color: Colors.white,
//             size: 22,
//           ),
//         ),
//       ],
//     );
//   }
// }
