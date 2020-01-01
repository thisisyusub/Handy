import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy/bloc_layer/blocs/login_bloc.dart';
import 'package:handy/bloc_layer/events/login_event.dart';
import 'package:handy/bloc_layer/states/login_state.dart';
import 'package:handy/contants/app_strings.dart';
import 'package:handy/contants/routes.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/presentation_layer/widgets/custom_button.dart';
import 'package:handy/utils/size_config.dart';
import 'package:toast/toast.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final String _emailRegex =
      "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$";
  final _emailController = TextEditingController();

  // should contain at least one upper case
  // should contain at least one lower case
  // should contain at least one digit
  // at least 8 characters
  final String _passwordRegex = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
  final _passwordController = TextEditingController();
  bool _emailValidator = false;
  bool _passwordValidator = false;
  bool _enableButtons = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(
      () => _isEmailValid(_emailController.text),
    );
    _passwordController.addListener(
      () => _isPasswordValid(_passwordController.text),
    );
  }

  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is ErrorHappenedState) {
          Toast.show(state.errorMessage, context,
              duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        }

        if (state is SuccessLoginState) {
          Navigator.of(context).pushNamed(
            Routes.Home,
          );
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        if (state is LoginLoadingState) {
          return Stack(
            children: <Widget>[
              _unitializedWidget(),
              Center(
                child: CircularProgressIndicator(),
              ),
            ],
          );
        }

        return _unitializedWidget();
      }),
    );
  }

  Widget _unitializedWidget() {
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
                controller: _emailController,
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: AppStrings.hintEmail,
                  errorText:
                      _emailValidator ? null : 'Please, enter valid email!',
                ),
                maxLength: 40,
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
                controller: _passwordController,
                obscureText: true,
                maxLength: 20,
                maxLines: 1,
                decoration: InputDecoration(
                    errorText: _passwordValidator
                        ? null
                        : 'Please, enter valid password!'),
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
                    onTap: _enableButtons
                        ? () => BlocProvider.of<LoginBloc>(context).add(
                              LoginButtonClickedEvent(
                                email: _emailController.text,
                                password: _passwordController.text,
                              ),
                            )
                        : null,
                    child: CustomButton(
                      height: SizeConfig.heightMultiplier * 5.625,
                      width: SizeConfig.widthMultiplier * 28.888,
                      margin: EdgeInsets.zero,
                      title: AppStrings.login,
                      disabled: !_enableButtons,
                    ),
                  ),
                  GestureDetector(
                    onTap: _enableButtons
                        ? () => BlocProvider.of<LoginBloc>(context).add(
                              CreateButtonClicked(),
                            )
                        : null,
                    child: CustomButton(
                      height: SizeConfig.heightMultiplier * 5.625,
                      width: SizeConfig.widthMultiplier * 28.888,
                      margin: EdgeInsets.only(
                        left: SizeConfig.widthMultiplier * 4.444,
                      ),
                      title: AppStrings.create,
                      disabled: !_enableButtons,
                    ),
                  ),
                ],
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

  void _isEmailValid(String email) {
    setState(() {
      _emailValidator = RegExp(_emailRegex).hasMatch(email);
    });
    _enableActionButtons();
  }

  void _isPasswordValid(String password) {
    setState(() {
      _passwordValidator = RegExp(_passwordRegex).hasMatch(password);
    });
    _enableActionButtons();
  }

  void _enableActionButtons() {
    setState(() {
      _enableButtons = _emailValidator && _passwordValidator;
      print('buttons enabled: $_enableButtons');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}

class LoginOrSignUpState {}
