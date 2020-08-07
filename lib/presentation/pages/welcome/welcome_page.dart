import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/app_colors.dart';
import '../../shared/app_icons.dart';
import '../../widgets/custom_button.dart';

import '../../../utils/constants/app_strings.dart';
import '../../../utils/extensions/text_scale_factor_helper.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.appBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  left: 70,
                  top: 50,
                ),
                child: Text(
                  AppStrings.handy,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 48,
                  top: 50,
                ),
                child: SvgPicture.asset(
                  AppIcons.illustration,
                  width: 300,
                  height: 220,
                ),
              ),
              SizedBox(height: 90),
              Center(
                child: CustomButton(
                  width: 240,
                  padding: EdgeInsets.symmetric(
                    vertical: 12 * context.textScaleFactor,
                    horizontal: 30,
                  ),
                  title: AppStrings.continueWithEmail,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: CustomButton(
                  width: 240,
                  padding: EdgeInsets.symmetric(
                    vertical: 12 * context.textScaleFactor,
                    horizontal: 30,
                  ),
                  title: AppStrings.continueWithGoogle,
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: RichText(
                  overflow: TextOverflow.clip,
                  text: TextSpan(
                    text: AppStrings.byContinuingYouAccept,
                    style: Theme.of(context).textTheme.caption,
                    children: [
                      TextSpan(
                        text: AppStrings.termsOfUse,
                        style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
