import 'package:flutter/material.dart';

import '../../utils/constants/app_strings.dart';
import '../shared/app_text_styles.dart';
import '../widgets/page_view_title.dart';
import '../../utils/size_config.dart';
import './chip_item.dart';

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
            children: <Widget>[
              Text(
                AppStrings.name,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 3.333,
              ),
              Container(
                width: SizeConfig.widthMultiplier * 26.666,
                child: TextField(),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.age,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 3.333,
              ),
              Container(
                width: SizeConfig.widthMultiplier * 8.888,
                child: TextField(),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 4.375,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.gender,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 3.333,
              ),
              ChipItem(
                label: AppStrings.male,
                width: SizeConfig.widthMultiplier * 19.444,
                height: SizeConfig.heightMultiplier * 3.75,
                colored: true,
                borderRadius: SizeConfig.widthMultiplier * 3.333,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 3.333,
              ),
              ChipItem(
                label: AppStrings.female,
                width: SizeConfig.widthMultiplier * 19.444,
                height: SizeConfig.heightMultiplier * 3.75,
                borderRadius: SizeConfig.widthMultiplier * 3.333,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
