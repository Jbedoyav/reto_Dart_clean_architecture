import 'package:flutter/material.dart';

// ignore: constant_identifier_names
enum AppEnvironment { DEV, STAGING, PROD } //environments

// ignore: constant_identifier_names
enum Brand { popular, nowPlaying } // brand

class EnvInfo {
  static AppEnvironment _environment = AppEnvironment.DEV;
  static Brand _brand = Brand.popular;

  // Initialize app according flavor set up
  static void initializeFromFlavor(AppEnvironment environment) {
    Brand brand = _getBrandFromFlavor();

    initialize(environment, brand);
  }

  //Initialize app
  static void initialize(AppEnvironment environment, Brand brand) {
    _environment = environment;
    _brand = brand;
  }

  //get flavor name
  static Brand _getBrandFromFlavor() {
    const String flavor = String.fromEnvironment('FLUTTER_APP_FLAVOR');
    if (flavor.startsWith('popular')) {
      return Brand.popular;
    } else if (flavor.startsWith('nowplaying')) {
      return Brand.nowPlaying;
    } else {
      return Brand.popular;
    }
  }

  static String get appName =>
      '${_environment._appTitle} ${_brand._brandTitle}';
  static String get envName => _environment._envName;
  static String get connectionString => _environment._connectionString;
  static AppEnvironment get environment => _environment;
  static Brand get brand => _brand;
  static bool get isProduction => _environment == AppEnvironment.PROD;
  static String get brandService => _brand._brandService;
  static ColorScheme get brandTheme => _brand._brandTheme;
}

//extensions
extension _EnvProperties on AppEnvironment {
  static const _appTitles = {
    AppEnvironment.DEV: 'Dev',
    AppEnvironment.STAGING: 'STAGING',
    AppEnvironment.PROD: 'Prod',
  };

  static const _connectionStrings = {
    AppEnvironment.DEV: 'https://api.spoonacular.com',
    AppEnvironment.STAGING: 'https://api.spoonacular.com',
    AppEnvironment.PROD: 'https://api.spoonacular.com',
  };

  static const _envs = {
    AppEnvironment.DEV: 'Dev',
    AppEnvironment.STAGING: 'Staging',
    AppEnvironment.PROD: 'Prod',
  };

  String get _appTitle => _appTitles[this]!;
  String get _envName => _envs[this]!;
  String get _connectionString => _connectionStrings[this]!;
}

extension _BrandProperties on Brand {
  static const _brandTitles = {
    Brand.popular: 'Popular Movies',
    Brand.nowPlaying: 'Now Playing Movies',
  };

  static final _brandThemes = {
    Brand.popular: ColorScheme.fromSwatch(
      primarySwatch: Colors.red,
    ),
    Brand.nowPlaying: ColorScheme.fromSwatch(
      primarySwatch: Colors.purple,
    ),
  };

  static const _brandServices = {
    Brand.popular:
        'https://api.themoviedb.org/3/movie/popular?api_key=870e936f35b26f8eef70dbc59f3d934f&page=29',
    Brand.nowPlaying:
        'https://api.themoviedb.org/3/movie/now_playing?api_key=870e936f35b26f8eef70dbc59f3d934f&page=3',
  };
  String get _brandService => _brandServices[this]!;
  String get _brandTitle => _brandTitles[this]!;
  ColorScheme get _brandTheme => _brandThemes[this]!;
}
