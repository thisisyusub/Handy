import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy/bloc_layer/blocs/login_or_signup_bloc.dart';
import 'package:handy/bloc_layer/events/login_or_signup_event.dart';
import 'package:handy/bloc_layer/states/login_or_signup_state.dart';
import 'package:handy/contants/app_strings.dart';
import 'package:handy/contants/routes.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/presentation_layer/widgets/custom_button.dart';
import 'package:handy/utils/size_config.dart';
import 'package:toast/toast.dart';

class RegisterPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocListener<LoginOrSignUpBloc, LoginOrSignUpState>(
      listener: (context, state) {
        if (state is ErrorHappenedState) {
          Toast.show(state.errorMessage, context,
              duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        }
      },
      child: BlocBuilder<LoginOrSignUpBloc, LoginOrSignUpState>(
          builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomPadding: true,
          resizeToAvoidBottomInset: true,
          backgroundColor: AppColors.appBackgroundColor,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: SizeConfig.heightMultiplier * 18.75,
                left: SizeConfig.widthMultiplier * 8.888,
                right: SizeConfig.widthMultiplier * 8.888,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    AppStrings.welcome,
                    style: AppTextStyles.fontSize22MediumStyle,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 10.15625,
                  ),
                  Text(
                    AppStrings.email,
                    style: AppTextStyles.fontSize14RegularStyle,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2.5,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: AppStrings.hintEmail,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4,
                  ),
                  Text(
                    AppStrings.password,
                    style: AppTextStyles.fontSize14RegularStyle,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2.5,
                  ),
                  TextField(
                    obscureText: true,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 4,
                  ),
                  Text(
                    AppStrings.forgotPassword,
                    style: AppTextStyles.fontSize12RegularStyle,
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 3.4375,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed(
                          Routes.Home,
                        ),
                        child: CustomButton(
                          height: SizeConfig.heightMultiplier * 5.625,
                          width: SizeConfig.widthMultiplier * 28.888,
                          margin: EdgeInsets.zero,
                          title: AppStrings.login,
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            BlocProvider.of<LoginOrSignUpBloc>(context).add(
                          CreateButtonClicked(),
                        ),
                        child: CustomButton(
                          height: SizeConfig.heightMultiplier * 5.625,
                          width: SizeConfig.widthMultiplier * 28.888,
                          margin: EdgeInsets.only(
                            left: SizeConfig.widthMultiplier * 4.444,
                          ),
                          title: AppStrings.create,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
