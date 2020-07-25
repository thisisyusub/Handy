import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/constants/app_strings.dart';
import '../../shared/app_colors.dart';
import '../../shared/app_icons.dart';
import '../../widgets/custom_button.dart';
import '../../../utils/responsive_helper/size_config.dart';
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
                  left: SizeConfig.widthMultiplier * 22.222,
                  top: SizeConfig.heightMultiplier * 5,
                ),
                child: Text(
                  AppStrings.handy,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier * 13.333,
                  top: SizeConfig.heightMultiplier * 7.8125,
                ),
                child: SvgPicture.asset(
                  AppIcons.illustration,
                  width: SizeConfig.widthMultiplier * 68.888,
                  height: SizeConfig.heightMultiplier * 37.5,
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 12.03125),
              Center(
                child: CustomButton(
                  width: SizeConfig.widthMultiplier * 57.777,
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier *
                        1.875 *
                        context.textScaleFactor,
                    horizontal: SizeConfig.widthMultiplier * 8.333,
                  ),
                  title: AppStrings.continueWithEmail,
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 3.125),
              Center(
                child: CustomButton(
                  width: SizeConfig.widthMultiplier * 60,
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier *
                        1.875 *
                        context.textScaleFactor,
                  ),
                  title: AppStrings.continueWithGoogle,
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2.5),
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
