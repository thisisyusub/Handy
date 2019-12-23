import 'package:flutter/material.dart';
import 'package:handy/contants/app_strings.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/utils/size_config.dart';

class AddMedicinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        body: Container(
          margin: EdgeInsets.only(
            top: SizeConfig.heightMultiplier * 7.5,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier * 8.888,
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                    ),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    AppStrings.add,
                    style: AppTextStyles.fontSize14MediumStyle,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 4,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          AppStrings.name,
                          style: AppTextStyles.fontSize14RegularStyle,
                        ),
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 3.611,
                        ),
                        Container(
                          width: SizeConfig.widthMultiplier * 21.111,
                          child: TextField(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
