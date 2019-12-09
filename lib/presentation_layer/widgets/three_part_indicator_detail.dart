import 'package:flutter/material.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/utils/size_config.dart';

class ThreePartIndicatorDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildEachElement(
              AppColors.partOneColor,
              '58.6g Carb',
              '58.6/180',
              MainAxisAlignment.start,
            ),
            _buildEachElement(
              AppColors.partTwoColor,
              '46.9g Protein',
              '46.9/80',
              MainAxisAlignment.start,
            ),
            _buildEachElement(
              AppColors.partThreeColor,
              '39.9g Fat',
              '39.9/60',
              MainAxisAlignment.end,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEachElement(
    Color itemColor,
    String title,
    String subtitle,
    MainAxisAlignment alignment,
  ) {
    return Row(
      mainAxisAlignment: alignment,
      children: <Widget>[
        CircleAvatar(
          maxRadius: SizeConfig.widthMultiplier * 2.5,
          backgroundColor: itemColor,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
          overflow: TextOverflow.fade,
          style: AppTextStyles.fontSize12RegularStyle,
        ),
      ],
    );
  }
}
