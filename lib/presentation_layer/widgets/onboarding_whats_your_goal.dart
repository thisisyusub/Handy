import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/widgets/chip_item.dart';
import 'package:heathier/presentation_layer/widgets/page_view_title.dart';
import 'package:heathier/utils/size_config.dart';

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
                height: SizeConfig.blockHeight * 5,
                width: SizeConfig.blockWidth * 45,
                label: AppStrings.maintainLifestyle,
                colored: true,
                borderRadius: SizeConfig.blockWidth * 4.444,
              ),
              SizedBox(
                height: SizeConfig.blockHeight * 2.5,
              ),
              ChipItem(
                height: SizeConfig.blockHeight * 5,
                width: SizeConfig.blockWidth * 45,
                label: AppStrings.maintainLifestyle,
                borderRadius: SizeConfig.blockWidth * 4.444,
              ),
              SizedBox(
                height: SizeConfig.blockHeight * 2.5,
              ),
              ChipItem(
                height: SizeConfig.blockHeight * 5,
                width: SizeConfig.blockWidth * 45,
                label: AppStrings.maintainLifestyle,
                borderRadius: SizeConfig.blockWidth * 4.444,
              ),
            ],
          )
        ],
      ),
    );
  }
}
