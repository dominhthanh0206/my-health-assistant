import 'dart:developer';

import 'package:flutter/material.dart';

SnackBar showSnackBar(String message) {
  return SnackBar(
    content: Text(message),
    action: SnackBarAction(
      label: 'Done',
      onPressed: () {
        log('close snackbar');
      },
    ),
  );
}
