import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Snackbar {
  void showSnackBar(
    BuildContext context,
    String title, {
    SnackBarAction? action,
    Duration duration = const Duration(seconds: 3),
    bool noAction = false,
  }) {
    try {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: duration,
        elevation: 6,
        backgroundColor: Colors.black,
        behavior: SnackBarBehavior.floating,
        content: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        action: noAction
            ? null
            : action ??
                SnackBarAction(
                  textColor: Theme.of(context).colorScheme.secondary,
                  label: AppLocalizations.of(context)!.ok,
                  onPressed: () {},
                ),
      ));
    } catch (e) {
      log(e.toString());
    }
  }
}
