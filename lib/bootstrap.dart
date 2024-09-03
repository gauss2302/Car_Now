import 'dart:async';
import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp();

    runApp(await builder());
  }, (error, stack) => log('$error', name: 'Error', stackTrace: stack));
}
