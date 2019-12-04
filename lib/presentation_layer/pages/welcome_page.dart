import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/contants/routes.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_icons.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/custom_button.dart';
import 'package:heathier/utils/size_config.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation, context);
            return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: AppColors.appBackgroundColor,
              body: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthMultiplier * 8.333,
                  vertical: 0,
                ),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.heightMultiplier * 14.84375,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 7.222,
                              ),
                              child: Text(
                                AppStrings.healthier,
                                style: AppTextStyles.fontSize30MediumStyle,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.heightMultiplier * 7.1875,
                            ),
                            SvgPicture.asset(
                              AppIcons.illustration,
                              height: SizeConfig.heightMultiplier * 39.0625,
                              width: SizeConfig.widthMultiplier * 72.222,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: SizeConfig.heightMultiplier * 3.75,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () => Navigator.of(context)
                                  .pushNamed(Routes.Register),
                              child: CustomButton(
                                height: SizeConfig.heightMultiplier * 5.625,
                                width: SizeConfig.widthMultiplier * 57.777,
                                title: AppStrings.continueWithEmail,
                                margin: EdgeInsets.zero,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pushNamed(
                                Routes.SignUp,
                              ),
                              child: CustomButton(
                                height: SizeConfig.heightMultiplier * 5.625,
                                width: SizeConfig.widthMultiplier * 57.777,
                                title: AppStrings.continueWithGoogle,
                                margin: EdgeInsets.only(
                                  top: SizeConfig.heightMultiplier * 3.125,
                                  bottom: SizeConfig.heightMultiplier * 2.5,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  AppStrings.byContinuingYouAccept,
                                  style: AppTextStyles.fontSize11Style,
                                ),
                                Text(
                                  AppStrings.termsOfUse,
                                  style: AppTextStyles.fontSize11BoldStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
