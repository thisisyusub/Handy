import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/chip_item.dart';
import 'package:heathier/presentation_layer/widgets/page_view_title.dart';
import 'package:heathier/utils/size_config.dart';

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
                width: SizeConfig.blockWidth * 2.777,
              ),
              Container(
                width: SizeConfig.blockWidth * 8.888,
                child: TextField(),
              ),
              SizedBox(
                width: SizeConfig.blockWidth * 2.777,
              ),
              ChipItem(
                label: AppStrings.kg,
                width: SizeConfig.blockWidth * 13.888,
                height: SizeConfig.blockHeight * 3.75,
                colored: true,
                borderRadius: SizeConfig.blockWidth * 3.333,
              ),
              SizedBox(
                width: SizeConfig.blockWidth * 2.777,
              ),
              ChipItem(
                label: AppStrings.oz,
                width: SizeConfig.blockWidth * 13.888,
                height: SizeConfig.blockHeight * 3.75,
                colored: false,
                borderRadius: SizeConfig.blockWidth * 3.333,
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.weight,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.blockWidth * 2.777,
              ),
              Container(
                width: SizeConfig.blockWidth * 8.888,
                child: TextField(),
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 4,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                AppStrings.activityLevel,
                style: AppTextStyles.fontSize14RegularStyle,
              ),
              SizedBox(
                width: SizeConfig.blockWidth * 2.777,
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
