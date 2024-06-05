import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/app_root.dart';
import 'package:reto_28_05_2024/config/environments/config_env.dart';
import 'package:reto_28_05_2024/config/flavor_banner.dart';
import 'package:reto_28_05_2024/inyection_container.dart';

Future<void> mainCommon(
  AppEnvironment environment,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  EnvInfo.initializeFromFlavor(environment);
  injectionContainer();
  runApp(flavorBanner(const AppRoot()));
}
