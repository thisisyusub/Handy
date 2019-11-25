import 'package:flutter/material.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/core/viewmodels/widgets/sign_up_button_view_model.dart';
import 'package:heathier/locator.dart';
import 'package:heathier/ui/base_widget.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<SignUpButtonViewModel>(
      model: locator.get<SignUpButtonViewModel>(),
      child: Container(
        width: SizeConfig.blockWidth * 47.222 * SizeConfig.textScaleFactor,
        height: SizeConfig.blockHeight * 6.71875 * SizeConfig.textScaleFactor,
        decoration: BoxDecoration(
          color: AppColors.signUpButtonColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: Text(
            AppStrings.signUp,
            style: AppTextStyles.fontSize20Style,
          ),
        ),
      ),
      builder: (context, model, child) {
        return GestureDetector(
          onTap: () => model.onSignUpClicked(context),
          child: child,
        );
      },
    );
  }
}
