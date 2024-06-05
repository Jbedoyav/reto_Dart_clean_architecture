import 'package:flutter/material.dart';
import 'package:reto_28_05_2024/config/environments/config_env.dart';

@override
Widget flavorBanner(Widget child) {
  if (EnvInfo.environment == AppEnvironment.STAGING ||
      EnvInfo.environment == AppEnvironment.DEV) {
    return Banner(
      location: BannerLocation.bottomEnd,
      message: EnvInfo.envName,
      color: Colors.red.withOpacity(0.6),
      textStyle: const TextStyle(
          fontWeight: FontWeight.w700, fontSize: 14.0, letterSpacing: 1.0),
      textDirection: TextDirection.ltr,
      child: child,
    );
  }
  return child;
}
