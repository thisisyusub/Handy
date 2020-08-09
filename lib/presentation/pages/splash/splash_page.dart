import 'package:flutter/material.dart';
import '../../../utils/constants/app_strings.dart';

/// Page to shown loading when the app is started
/// it will be shown until app checks authentication
class SplashPage extends StatelessWidget {
  /// Default Constructor of [SplashPage]
  const SplashPage();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        AppStrings.handy,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
