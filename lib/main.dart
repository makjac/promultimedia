import 'package:flutter/material.dart';
import 'package:promultimedia/app/app.dart';
import 'package:promultimedia/injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  runApp(const App());
}
