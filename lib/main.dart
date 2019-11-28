import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathier/bloc_layer/blocs/welcome_bloc.dart';
import 'package:heathier/presentation_layer/router.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/simple_bloc_delegate.dart';
import 'package:heathier/presentation_layer/views/welcome_view.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.white, // status bar color
    statusBarIconBrightness: Brightness.dark, // status bar icons' color
    systemNavigationBarIconBrightness:
        Brightness.dark, //navigation bar icons' color
  ));

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<WelcomeBloc>(
      create: (_) => WelcomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Healthier',
        theme: ThemeData(
          primaryColor: AppColors.signUpButtonColor,
          accentColor: AppColors.signUpButtonColor,
        ),
        home: WelcomeView(),
        onGenerateRoute: Router.generateRoute,
      ),
    );
  }
}
