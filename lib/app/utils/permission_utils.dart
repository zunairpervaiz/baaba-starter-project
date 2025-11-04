import 'dart:async';

import 'package:baaba_starter_project/app/extensions/build_context_ext.dart';
import 'package:baaba_starter_project/app/generated/app_localizations.dart';
import 'package:flutter/widgets.dart';
import 'package:permission_handler/permission_handler.dart';

final class PermissionUtils {
  const PermissionUtils._();

  static AppLocalizations? _l10n;

  static FutureOr<bool> requestPermission(
    BuildContext context,
    Permission permission, {
    FutureOr<void>? Function()? onGranted,
    FutureOr<void>? Function()? onDenied,
    FutureOr<void>? Function()? onPermanentlyDenied,
  }) async {
    _l10n ??= context.l10n;
    final status = await permission
        .onGrantedCallback(onGranted)
        .onLimitedCallback(onGranted)
        .onDeniedCallback(onDenied)
        .onPermanentlyDeniedCallback(onPermanentlyDenied ?? onDenied)
        .onRestrictedCallback(onPermanentlyDenied ?? onDenied)
        .onProvisionalCallback(onPermanentlyDenied ?? onDenied)
        .request();

    if (status.isGranted) {
      permission
          .onGrantedCallback(null)
          .onLimitedCallback(null)
          .onDeniedCallback(null)
          .onPermanentlyDeniedCallback(null)
          .onRestrictedCallback(null)
          .onProvisionalCallback(null);
    }
    return status.isGranted;
  }

  static FutureOr<bool> checkIfLocationServiceEnabled(BuildContext context, {FutureOr<void>? Function()? onGranted}) async {
    _l10n = context.l10n;

    final status = await Permission.locationWhenInUse.serviceStatus;

    if (status.isEnabled) {
      onGranted?.call();
    } else if (status.isDisabled) {
      // showPermissionDeniedDialog();
    }
    return status.isEnabled;
  }
}
