import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_x/responsive_x.dart';

import '../../shared/app_colors.dart';
import '../../shared/app_icons.dart';
import '../../widgets/custom_button.dart';

import '../../../utils/extensions/text_scale_factor_helper.dart';
import '../../../utils/constants/app_strings.dart';

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
                  left: context.computeWidth(70),
                  top: context.computeHeight(50),
                ),
                child: Text(
                  AppStrings.handy,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        fontSize: context.computeFontSize(32),
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: context.computeWidth(48),
                  top: context.computeHeight(50),
                ),
                child: SvgPicture.asset(
                  AppIcons.illustration,
                  width: context.computeWidth(300),
                  height:context.computeHeight(220),
                ),
              ),
              SizedBox(height: context.computeHeight(90)),
              Center(
                child: CustomButton(
                  width: context.computeWidth(240),
                  padding: EdgeInsets.symmetric(
                    vertical: context.computeHeight(12) *
                        context.textScaleFactor,
                    horizontal: context.computeHeight(30),
                  ),
                  title: AppStrings.continueWithEmail,
                ),
              ),
              SizedBox(height: context.computeHeight(20)),
              Center(
                child: CustomButton(
                  width: context.computeWidth(240),
                  padding: EdgeInsets.symmetric(
                    vertical: context.computeHeight(12) *
                        context.textScaleFactor,
                    horizontal: context.computeHeight(30),
                  ),
                  title: AppStrings.continueWithGoogle,
                ),
              ),
              SizedBox(height: context.computeHeight(16)),
              Center(
                child: RichText(
                  overflow: TextOverflow.clip,
                  text: TextSpan(
                    text: AppStrings.byContinuingYouAccept,
                    style: Theme.of(context).textTheme.caption.copyWith(
                      fontSize: context.computeFontSize(11),
                    ),
                    children: [
                      TextSpan(
                        text: AppStrings.termsOfUse,
                        style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold,
                          fontSize: context.computeFontSize(11),
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
