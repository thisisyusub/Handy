import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/chip_item.dart';
import 'package:heathier/presentation_layer/widgets/custom_progress_bar.dart';
import 'package:heathier/presentation_layer/widgets/date_controller_widget.dart';
import 'package:heathier/utils/size_config.dart';

class CalorieInDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    child: Icon(Icons.arrow_back),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  Text(
                    AppStrings.setTarget,
                    style: AppTextStyles.fontSize14MediumStyle,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 7.8125,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppStrings.calorie,
                    style: AppTextStyles.fontSize16MMediumStyle,
                  ),
                  CustomProgressBar(0.64),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 7.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '782/1800 Cal',
                    style: AppTextStyles.fontSize16MMediumStyle,
                  ),
                  ChipItem(
                    label: AppStrings.add,
                    height: SizeConfig.heightMultiplier * 3.75,
                    width: SizeConfig.widthMultiplier * 14.444,
                    borderRadius: SizeConfig.widthMultiplier * 3.33,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 3.75,
              ),
              DateControllerWidget(),
              SizedBox(
                height: SizeConfig.heightMultiplier * 7.03125,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
