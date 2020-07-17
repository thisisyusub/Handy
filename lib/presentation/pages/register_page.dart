import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toast/toast.dart';

import '../../utils/constants/app_strings.dart';
import '../../utils/constants/routes.dart';
import '../shared/app_colors.dart';
import '../shared/app_text_styles.dart';
import '../widgets/custom_button.dart';
import '../../utils/size_config.dart';
import '../../bloc/login_and_register_bloc/login_or_register_bloc.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return BlocConsumer<LoginOrRegisterBloc, LoginOrRegisterState>(
      listenWhen: (oldState, currentState) {
        if (oldState is LoginLoadingState) {
          Navigator.of(context).pop();
        }

        return currentState is ErrorHappenedState ||
            currentState is SuccessLoginState ||
            currentState is LoginLoadingState;
      },
      listener: (context, state) {
        if (state is ErrorHappenedState) {
          Toast.show(
            state.errorMessage,
            context,
            duration: Toast.LENGTH_SHORT,
            gravity: Toast.BOTTOM,
          );
        } else if (state is SuccessLoginState) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            Routes.Home,
            (Route<dynamic> route) => false,
          );
        } else if (state is LoginLoadingState) {
          showDialog(
            context: context,
            builder: (_) => AlertDialog(
              title: Text('Please, be patient...'),
              content: Row(
                children: <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Loading'),
                ],
              ),
            ),
            barrierDismissible: false,
          );
        }
      },
      builder: (context, state) {
        return _unitializedWidget(state);
      },
    );
  }

  Widget _unitializedWidget(LoginOrRegisterState state) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.appBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: SizeConfig.heightMultiplier * 18.75,
          left: SizeConfig.widthMultiplier * 8.888,
          right: SizeConfig.widthMultiplier * 8.888,
        ),
        child: SingleChildScrollView(
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
              StreamBuilder<String>(
                stream: BlocProvider.of<LoginOrRegisterBloc>(context).email,
                builder: (context, snapshot) {
                  return TextField(
                    controller: _emailController,
                    onChanged: BlocProvider.of<LoginOrRegisterBloc>(context)
                        .onEmailChanged,
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: AppStrings.hintEmail,
                      errorText: snapshot.error,
                    ),
                    maxLength: 40,
                  );
                },
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
              StreamBuilder<String>(
                stream: BlocProvider.of<LoginOrRegisterBloc>(context).password,
                builder: (context, snapshot) {
                  return TextField(
                    controller: _passwordController,
                    onChanged: BlocProvider.of<LoginOrRegisterBloc>(context)
                        .onPasswordChanged,
                    obscureText: true,
                    maxLength: 20,
                    maxLines: 1,
                    decoration: InputDecoration(
                      errorText: snapshot.error,
                    ),
                  );
                },
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
              StreamBuilder<String>(
                stream: BlocProvider.of<LoginOrRegisterBloc>(context).email,
                builder: (context, email) {
                  return StreamBuilder<String>(
                    stream:
                        BlocProvider.of<LoginOrRegisterBloc>(context).password,
                    builder: (context, password) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => email.hasData
                                ? (password.hasData
                                    ? (email.hasError
                                        ? null
                                        : BlocProvider.of<LoginOrRegisterBloc>(
                                                context)
                                            .add(
                                            LoginButtonClickedEvent(
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text,
                                            ),
                                          ))
                                    : null)
                                : null,
                            child: CustomButton(
                              height: SizeConfig.heightMultiplier * 5.625,
                              width: SizeConfig.widthMultiplier * 28.888,
                              margin: EdgeInsets.zero,
                              title: AppStrings.login,
                              disabled: email.hasData
                                  ? (password.hasData
                                      ? (email.hasError
                                          ? true
                                          : (password.hasError ? true : false))
                                      : true)
                                  : true,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => email.hasData
                                ? (password.hasData
                                    ? (email.hasError
                                        ? null
                                        : BlocProvider.of<LoginOrRegisterBloc>(
                                                context)
                                            .add(
                                            CreateButtonClickedEvent(
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text,
                                            ),
                                          ))
                                    : null)
                                : null,
                            child: CustomButton(
                              height: SizeConfig.heightMultiplier * 5.625,
                              width: SizeConfig.widthMultiplier * 28.888,
                              margin: EdgeInsets.only(
                                left: SizeConfig.widthMultiplier * 4.444,
                              ),
                              title: AppStrings.create,
                              disabled: email.hasData
                                  ? (password.hasData
                                      ? (email.hasError
                                          ? true
                                          : (password.hasError ? true : false))
                                      : true)
                                  : true,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
