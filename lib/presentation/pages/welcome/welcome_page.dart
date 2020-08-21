import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../blocs/auth_bloc/auth_bloc.dart';
import '../../../utils/constants/assets.dart';
import '../../../utils/extensions/translator.dart';
import '../../shared/app_colors.dart';
import '../../widgets/custom_button.dart';

/// [WelcomePage] of app
/// shown when the is firstly opened or log out
class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 70,
                top: 50,
              ),
              child: Text(
                'handy',
                style: Theme.of(context).textTheme.headline4,
              ).tr(),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 48,
                  right: 48,
                ),
                child: SvgPicture.asset(
                  Assets.icons.illustration,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    widthFactor: 0.7,
                    title: 'continue_with_email',
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                  ),
                  CustomButton(
                    widthFactor: 0.7,
                    title: 'continue_with_google',
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    onTap: () => BlocProvider.of<AuthBloc>(context)
                        .add(GoogleSignInRequested()),
                  ),
                  RichText(
                    overflow: TextOverflow.clip,
                    text: TextSpan(
                      text: 'by_continuing_you_accept'.tr(),
                      style: Theme.of(context).textTheme.caption,
                      children: [
                        TextSpan(
                          text: ' ${'terms_of_use'.tr()}',
                          style: Theme.of(context).textTheme.caption.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
