import 'dart:async';
import 'package:flutter/material.dart';

/// Toast notification types
enum AppToastType { success, error, info, warning }

/// Service class for displaying toast notifications
class AppToast {
  AppToast._();

  static OverlayEntry? _currentEntry;
  static Timer? _dismissTimer;
  static bool _isShowing = false;
  static VoidCallback? _dismissCallback;

  /// Show a toast notification
  static void show(
    BuildContext context, {
    required String message,
    AppToastType type = AppToastType.info,
    Duration duration = const Duration(seconds: 3),
  }) {
    // Dismiss any existing toast before showing new one
    if (_isShowing && _dismissCallback != null) {
      _dismissCallback!();
      // Small delay to let previous animation finish
      Future.delayed(const Duration(milliseconds: 250), () {
        if (context.mounted) {
          _showToast(context, message, type, duration);
        }
      });
    } else {
      _showToast(context, message, type, duration);
    }
  }

  static void _showToast(
    BuildContext context,
    String message,
    AppToastType type,
    Duration duration,
  ) {
    final overlay = Overlay.of(context);

    final theme = Theme.of(context);
    final config = _ToastConfig.fromType(type, theme);

    _isShowing = true;
    _currentEntry = OverlayEntry(
      builder: (context) => _ToastWidget(
        message: message,
        config: config,
        onDismiss: _handleDismiss,
        onDismissCallbackReady: (callback) {
          _dismissCallback = callback;
        },
      ),
    );

    overlay.insert(_currentEntry!);

    _dismissTimer = Timer(duration, () {
      if (_dismissCallback != null) {
        _dismissCallback!();
      }
    });
  }

  static void _handleDismiss() {
    _dismissTimer?.cancel();
    _dismissTimer = null;
    _currentEntry?.remove();
    _currentEntry = null;
    _dismissCallback = null;
    _isShowing = false;
  }

  /// Manually hide the current toast
  static void hide() {
    if (_dismissCallback != null) {
      _dismissCallback!();
    }
  }
}

/// Configuration class for toast styling
class _ToastConfig {
  final IconData icon;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final Color iconColor;

  const _ToastConfig({
    required this.icon,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
    required this.iconColor,
  });

  /// Factory method to create config based on toast type
  factory _ToastConfig.fromType(AppToastType type, ThemeData theme) {
    final isDark = theme.brightness == Brightness.dark;

    switch (type) {
      case AppToastType.success:
        return _ToastConfig(
          icon: Icons.check_circle_rounded,
          backgroundColor: isDark
              ? const Color(0xFF0D3B2E)
              : const Color(0xFFE8F5E9),
          borderColor: const Color(0xFF10B981),
          iconColor: const Color(0xFF10B981),
          textColor: isDark ? Colors.white : const Color(0xFF064E3B),
        );

      case AppToastType.error:
        return _ToastConfig(
          icon: Icons.error_rounded,
          backgroundColor: isDark
              ? const Color(0xFF3D0A0A)
              : const Color(0xFFFFEBEE),
          borderColor: const Color(0xFFEF4444),
          iconColor: const Color(0xFFEF4444),
          textColor: isDark ? Colors.white : const Color(0xFF7F1D1D),
        );

      case AppToastType.warning:
        return _ToastConfig(
          icon: Icons.warning_rounded,
          backgroundColor: isDark
              ? const Color(0xFF3D2F0A)
              : const Color(0xFFFFF3E0),
          borderColor: const Color(0xFFF59E0B),
          iconColor: const Color(0xFFF59E0B),
          textColor: isDark ? Colors.white : const Color(0xFF78350F),
        );

      case AppToastType.info:
        return _ToastConfig(
          icon: Icons.info_rounded,
          backgroundColor: isDark
              ? const Color(0xFF1A1F2E)
              : const Color(0xFFE3F2FD),
          borderColor: const Color(0xFF3B82F6),
          iconColor: const Color(0xFF3B82F6),
          textColor: isDark ? Colors.white : const Color(0xFF1E3A8A),
        );
    }
  }
}

/// Toast widget with animations
class _ToastWidget extends StatefulWidget {
  const _ToastWidget({
    required this.message,
    required this.config,
    required this.onDismiss,
    required this.onDismissCallbackReady,
  });

  final String message;
  final _ToastConfig config;
  final VoidCallback onDismiss;
  final void Function(VoidCallback) onDismissCallbackReady;

  @override
  State<_ToastWidget> createState() => _ToastWidgetState();
}

class _ToastWidgetState extends State<_ToastWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _animationController.forward();

    // Provide dismiss callback to parent
    widget.onDismissCallbackReady(_handleDismissWithAnimation);
  }

  void _initializeAnimations() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 200),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutCubic,
            reverseCurve: Curves.easeInCubic,
          ),
        );

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _handleDismissWithAnimation() async {
    if (!mounted) return;

    // Reverse animation
    await _animationController.reverse();

    // Call parent dismiss callback
    if (mounted) {
      widget.onDismiss();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: SlideTransition(
            position: _slideAnimation,
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Material(
                color: Colors.transparent,
                child: _ToastContent(
                  message: widget.message,
                  config: widget.config,
                  onDismiss: _handleDismissWithAnimation,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Toast content widget
class _ToastContent extends StatelessWidget {
  const _ToastContent({
    required this.message,
    required this.config,
    required this.onDismiss,
  });

  final String message;
  final _ToastConfig config;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onDismiss,
      onVerticalDragEnd: (_) => onDismiss(),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 560),
        decoration: BoxDecoration(
          color: config.backgroundColor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: config.borderColor.withValues(alpha: .3),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .1),
              blurRadius: 20,
              offset: const Offset(0, 10),
              spreadRadius: -5,
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Icon(config.icon, color: config.iconColor, size: 24),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: TextStyle(
                  color: config.textColor,
                  fontSize: 14,
                  height: 1.4,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.close_rounded,
              size: 20,
              color: config.textColor.withValues(alpha: .5),
            ),
          ],
        ),
      ),
    );
  }
}
