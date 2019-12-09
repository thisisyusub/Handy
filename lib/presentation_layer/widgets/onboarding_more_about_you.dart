import 'package:flutter/material.dart';
import 'package:handy/contants/app_strings.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/presentation_layer/widgets/page_view_title.dart';
import 'package:handy/utils/size_config.dart';

import 'chip_item.dart';

class OnBoardingMoreAboutYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          PageViewTitle(
            title: AppStrings.moreAboutYou,
            subTitle: AppStrings.weNeedTheseInformationToCustomizeYourExp,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.height,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 2.777,
              ),
              Container(
                width: SizeConfig.widthMultiplier * 8.888,
                child: TextField(),
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 2.777,
              ),
              ChipItem(
                label: AppStrings.kg,
                width: SizeConfig.widthMultiplier * 13.888,
                height: SizeConfig.heightMultiplier * 3.75,
                colored: true,
                borderRadius: SizeConfig.widthMultiplier * 3.333,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 2.777,
              ),
              ChipItem(
                label: AppStrings.lb,
                width: SizeConfig.widthMultiplier * 13.888,
                height: SizeConfig.heightMultiplier * 3.75,
                colored: false,
                borderRadius: SizeConfig.widthMultiplier * 3.333,
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.weight,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 2.777,
              ),
              Container(
                width: SizeConfig.widthMultiplier * 8.888,
                child: TextField(),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.heightMultiplier * 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.activityLevel,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.widthMultiplier * 2.777,
              ),
               DropdownButton<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: 'Item 1',
                    child: Text('Item 1'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'Item 2',
                    child: Text('Item 2'),
                  ),
                ],
                onChanged: (value) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
