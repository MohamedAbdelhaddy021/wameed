import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();
navigateTo(Widget page, { bool removeHistory =false }) {
  return Navigator.pushAndRemoveUntil(
    navigatorKey.currentContext!,
    MaterialPageRoute(
      builder: (context) => page,
    ),
        (route) => !removeHistory,
  );
}
