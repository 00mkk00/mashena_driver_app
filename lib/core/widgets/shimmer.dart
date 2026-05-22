import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerCard extends StatefulWidget {
  final double height;
  final double? width;
  final double? borderRadius;

  const ShimmerCard({
    super.key,
    required this.height,
    this.width,
    this.borderRadius,
  });

  @override
  State<ShimmerCard> createState() => _ShimmerCardState();
}

class _ShimmerCardState extends State<ShimmerCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _ctrl;
  late Animation<double> _shimmer;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
    _shimmer = Tween<double>(
      begin: -2,
      end: 2,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _shimmer,
      builder: (_, __) => Container(
        width: widget.width,
        height: widget.height.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius?.r ?? 12.r),
          gradient: LinearGradient(
            begin: Alignment(_shimmer.value - 1, 0),
            end: Alignment(_shimmer.value, 0),
            colors: const [
              Color(0xFFF0F0F0),
              Color(0xFFE0E0E0),
              Color(0xFFF0F0F0),
            ],
          ),
        ),
      ),
    );
  }
}
