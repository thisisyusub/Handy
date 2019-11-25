import 'package:flutter/material.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/ui/widgets/chip_item.dart';
import 'package:heathier/ui/widgets/page_view_title.dart';
import 'package:heathier/utils/size_config.dart';

class TellsAboutYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          PageViewTitle(
            title: AppStrings.tellUsAboutYou,
            subTitle: AppStrings.weNeedTheseInformation,
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 13.4275,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                AppStrings.gender,
                style: AppTextStyles.fontSize20WithColorStyle,
              ),
              ChipItem(
                label: AppStrings.male,
                width: SizeConfig.blockWidth * 22.222,
                height: SizeConfig.blockHeight * 3.75,
              ),
              ChipItem(
                label: AppStrings.female,
                width: SizeConfig.blockWidth * 22.222,
                height: SizeConfig.blockHeight * 3.75,
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.blockHeight * 4.6875,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                AppStrings.age,
                style: AppTextStyles.fontSize20WithColorStyle,
              ),
              ChipItem(
                label: '25',
                width: SizeConfig.blockWidth * 9.722,
                height: SizeConfig.blockHeight * 3.75,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
