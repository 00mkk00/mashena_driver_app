import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedPulse extends StatelessWidget {
  final Widget child;
  final Color pulseColor;

  const AnimatedPulse({
    super.key,
    required this.child,
    required this.pulseColor,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOutSine,
      builder: (context, value, childWidget) {
        return Stack(
          alignment: Alignment.center,
          children: [
            // The expanding, fading pulse ring
            Container(
              width: 40.r + (value * 30.r), // Expands outward
              height: 40.r + (value * 30.r),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pulseColor.withOpacity(
                  1 - value,
                ), // Fades out as it expands
              ),
            ),
            // The static marker pin on top
            childWidget!,
          ],
        );
      },
      // Loop the animation infinitely
      onEnd: () {
        // To loop it, you would typically wrap this in a StatefulWidget with an AnimationController.
        // For a quick stateless loop in TweenAnimationBuilder, you can trigger a rebuild
        // by altering the key, or better yet, use a dedicated AnimationController in your map screen.
      },
      child: child,
    );
  }
}
