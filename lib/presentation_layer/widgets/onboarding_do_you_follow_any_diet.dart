import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/widgets/chip_item.dart';
import 'package:heathier/presentation_layer/widgets/page_view_title.dart';
import 'package:heathier/utils/size_config.dart';

class OnBoardingDoYouFollowAnyDiet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          PageViewTitle(
            title: AppStrings.doYouFollowAnyDiet,
            subTitle: AppStrings.weNeedTheseInformationToCustomizeYourExp,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  ChipItem(
                    label: AppStrings.no,
                    height: SizeConfig.blockHeight * 12.5,
                    width: SizeConfig.blockWidth * 21.666,
                    borderRadius: SizeConfig.blockWidth * 4.166,
                    isResizable: false,
                  ),
                  SizedBox(
                    width: SizeConfig.blockWidth * 5,
                  ),
                  ChipItem(
                    label: AppStrings.vegan,
                    height: SizeConfig.blockHeight * 12.5,
                    width: SizeConfig.blockWidth * 21.666,
                    borderRadius: SizeConfig.blockWidth * 4.166,
                    isResizable: false,
                  ),
                  SizedBox(
                    width: SizeConfig.blockWidth * 5,
                  ),
                  ChipItem(
                    label: AppStrings.ketogenic,
                    height: SizeConfig.blockHeight * 12.5,
                    width: SizeConfig.blockWidth * 21.666,
                    borderRadius: SizeConfig.blockWidth * 4.166,
                    isResizable: false,
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.blockHeight * 3.125,
              ),
              Row(
                children: <Widget>[
                  ChipItem(
                    label: AppStrings.glutenFree,
                    height: SizeConfig.blockHeight * 12.5,
                    width: SizeConfig.blockWidth * 21.666,
                    borderRadius: SizeConfig.blockWidth * 4.166,
                    isResizable: false,
                  ),
                  SizedBox(
                    width: SizeConfig.blockWidth * 5,
                  ),
                  ChipItem(
                    label: AppStrings.diaryFree,
                    height: SizeConfig.blockHeight * 12.5,
                    width: SizeConfig.blockWidth * 21.666,
                    borderRadius: SizeConfig.blockWidth * 4.166,
                    isResizable: false,
                  ),
                  SizedBox(
                    width: SizeConfig.blockWidth * 5,
                  ),
                  ChipItem(
                    label: AppStrings.paleo,
                    height: SizeConfig.blockHeight * 12.5,
                    width: SizeConfig.blockWidth * 21.666,
                    borderRadius: SizeConfig.blockWidth * 4.166,
                    isResizable: false,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
