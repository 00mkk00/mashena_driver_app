import 'package:flutter/material.dart';
import 'app_toast.dart';

/// Helper class for showing toast messages
class ToastHelper {
  ToastHelper._();

  /// Show success toast
  static void showSuccess(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    AppToast.show(
      context,
      message: message,
      type: AppToastType.success,
      duration: duration ?? const Duration(seconds: 3),
    );
  }

  /// Show error toast
  static void showError(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    AppToast.show(
      context,
      message: message,
      type: AppToastType.error,
      duration: duration ?? const Duration(seconds: 4),
    );
  }

  /// Show info toast
  static void showInfo(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    AppToast.show(
      context,
      message: message,
      type: AppToastType.info,
      duration: duration ?? const Duration(seconds: 3),
    );
  }

  /// Show warning toast
  static void showWarning(
    BuildContext context,
    String message, {
    Duration? duration,
  }) {
    AppToast.show(
      context,
      message: message,
      type: AppToastType.warning,
      duration: duration ?? const Duration(seconds: 3),
    );
  }
}

/// Extension on BuildContext for easier toast access
extension ToastExtension on BuildContext {
  /// Show success toast
  void showSuccessToast(String message, {Duration? duration}) {
    ToastHelper.showSuccess(this, message, duration: duration);
  }

  /// Show error toast
  void showErrorToast(String message, {Duration? duration}) {
    ToastHelper.showError(this, message, duration: duration);
  }

  /// Show info toast
  void showInfoToast(String message, {Duration? duration}) {
    ToastHelper.showInfo(this, message, duration: duration);
  }

  /// Show warning toast
  void showWarningToast(String message, {Duration? duration}) {
    ToastHelper.showWarning(this, message, duration: duration);
  }
}
