import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/chip_item.dart';
import 'package:heathier/presentation_layer/widgets/page_view_title.dart';
import 'package:heathier/utils/size_config.dart';

class OnBoardingTellsUsAboutYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageViewTitle(
            title: AppStrings.tellUsAboutYou,
            subTitle: AppStrings.weNeedTheseInformationToCustomizeYourExp,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.name,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.blockWidth * 3.333,
              ),
              Container(
                width: SizeConfig.blockWidth * 26.666,
                child: TextField(),
              ),
            ],
          ),
          SizedBox(
            width: SizeConfig.blockWidth * 5.15625,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.age,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.blockWidth * 3.333,
              ),
              Container(
                width: SizeConfig.blockWidth * 8.888,
                child: TextField(),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 4.375,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.gender,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.blockWidth * 3.333,
              ),
              ChipItem(
                label: AppStrings.male,
                width: SizeConfig.blockWidth * 19.444,
                height: SizeConfig.blockHeight * 3.75,
                colored: true,
                borderRadius: SizeConfig.blockWidth * 3.333,
              ),
              SizedBox(
                width: SizeConfig.blockWidth * 3.333,
              ),
              ChipItem(
                label: AppStrings.female,
                width: SizeConfig.blockWidth * 19.444,
                height: SizeConfig.blockHeight * 3.75,
                borderRadius: SizeConfig.blockWidth * 3.333,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
