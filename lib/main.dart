import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './presentation/shared/app_colors.dart';
import './presentation/simple_bloc_observer.dart';
import './app.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
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
}
