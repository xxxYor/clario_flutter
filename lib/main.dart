import 'package:clario_test_flutter/core/app/presentation/app.dart';
import 'package:clario_test_flutter/core/config/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupServiceLocator();

  runApp(
    const App(),
  );
}
