import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/config/environments/config_env.dart';
import 'package:reto_28_05_2024/main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await mainCommon(AppEnvironment.DEV);
}
