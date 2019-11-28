import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathier/bloc_layer/blocs/welcome_bloc.dart';
import 'package:heathier/bloc_layer/states/welcome_state.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/contants/routes.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/sign_up_button.dart';
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
                              child: BlocBuilder<WelcomeBloc, WelcomeState>(
                                builder: (context, state) {
                                  return BlocListener<WelcomeBloc, WelcomeState>(
                                    listener: (context, state) {
                                      if(state is SignUpClickedState) {
                                        print('listener running...');
                                        Navigator.of(context).pushNamed(Routes.Home);
                                      }
                                    },
                                    child: SignUpButton(),
                                  );
                                }
                              ),
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
