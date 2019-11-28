import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heathier/bloc_layer/blocs/welcome_bloc.dart';
import 'package:heathier/bloc_layer/events/welcome_event.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () => BlocProvider.of<WelcomeBloc>(context).add(SignUpClickedEvent(),),
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
    );
  }
}
