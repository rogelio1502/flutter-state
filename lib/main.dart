import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    runApp(const StateDemo());
  }, (error, stack) {});
}

class StateDemo extends StatelessWidget {
  const StateDemo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Scaffold(),
      onGenerateTitle: (_) => 'StateDemo',
    );
  }
}
