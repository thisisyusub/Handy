import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './app.dart';
import './presentation/shared/app_colors.dart';
import './presentation/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.appBackgroundColor,
      // navigation bar color
      statusBarColor: AppColors.appBackgroundColor,
      // status bar color
      statusBarIconBrightness: Brightness.dark,
      // status bar icons' color
      systemNavigationBarIconBrightness: Brightness.dark, // bar icons' color
    ),
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const HandyApp());
}
