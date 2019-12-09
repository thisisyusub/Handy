import 'package:flutter/material.dart';
import 'package:handy/contants/app_strings.dart';
import 'package:handy/presentation_layer/widgets/page_view_title.dart';
import 'package:handy/utils/size_config.dart';

import 'chip_item.dart';

class OnBoardingWhatIsYourGoal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          PageViewTitle(
            title: AppStrings.whatIsYourGoal,
            subTitle: AppStrings.weNeedTheseInformationToCustomizeYourExp,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ChipItem(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 45,
                label: AppStrings.maintainLifestyle,
                colored: true,
                borderRadius: SizeConfig.widthMultiplier * 4.444,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              ChipItem(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 45,
                label: AppStrings.maintainLifestyle,
                borderRadius: SizeConfig.widthMultiplier * 4.444,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2.5,
              ),
              ChipItem(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 45,
                label: AppStrings.maintainLifestyle,
                borderRadius: SizeConfig.widthMultiplier * 4.444,
              ),
            ],
          )
        ],
      ),
    );
  }
}
