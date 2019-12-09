import 'package:flutter/material.dart';
import 'package:handy/contants/app_strings.dart';
import 'package:handy/contants/routes.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/presentation_layer/widgets/custom_button.dart';
import 'package:handy/utils/size_config.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                height: SizeConfig.heightMultiplier * 9.375,
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
                  CustomButton(
                    height: SizeConfig.heightMultiplier * 5.625,
                    width: SizeConfig.widthMultiplier * 28.888,
                    margin: EdgeInsets.only(
                      left: SizeConfig.widthMultiplier * 4.444,
                    ),
                    title: AppStrings.create,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
