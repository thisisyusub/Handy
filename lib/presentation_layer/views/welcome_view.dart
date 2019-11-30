import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/custom_button.dart';
import 'package:heathier/utils/size_config.dart';

class WelcomeView extends StatelessWidget {
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
                  horizontal: SizeConfig.blockWidth * 8.333,
                  vertical: 0,
                ),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        margin: EdgeInsets.only(
                          top: SizeConfig.blockHeight * 17.1875,
                        ),
                        height: SizeConfig.blockHeight * 39.53125,
                        width: SizeConfig.blockWidth * 70.277,
                        child: Placeholder(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: SizeConfig.blockHeight * 3.75,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CustomButton(
                              height: SizeConfig.blockHeight * 5.625,
                              width: SizeConfig.blockWidth * 57.777,
                              title: AppStrings.continueWithEmail,
                              margin: EdgeInsets.zero,
                            ),
                            CustomButton(
                              height: SizeConfig.blockHeight * 5.625,
                              width: SizeConfig.blockWidth * 57.777,
                              title: AppStrings.continueWithGoogle,
                              margin: EdgeInsets.only(
                                top: SizeConfig.blockHeight * 3.125,
                                bottom: SizeConfig.blockHeight * 2.5,
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
