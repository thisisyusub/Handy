import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/ui/widgets/sign_up_button.dart';
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
              backgroundColor: AppColors.goalItemBackgroundColor,
              body: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockWidth * 8.333,
                  vertical: 0,
                ),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppStrings.welcomeToHealth,
                        style: AppTextStyles.fontSize40Style,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: SizeConfig.blockHeight * 4.375,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: SizeConfig.blockHeight * 4.6875,
                              ),
                              child: SignUpButton(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  AppStrings.haveAnAccount,
                                  style: AppTextStyles.fontSize16Style,
                                ),
                                Text(
                                  AppStrings.logIn,
                                  style: AppTextStyles.fontSize16BoldStyle,
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
