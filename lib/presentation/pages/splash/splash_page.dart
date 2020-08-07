import 'package:flutter/material.dart';

import '../../../utils/constants/app_strings.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

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
