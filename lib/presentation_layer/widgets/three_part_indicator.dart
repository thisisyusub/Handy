import 'package:flutter/material.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/utils/size_config.dart';

class ThreePartIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: SizeConfig.heightMultiplier * 2.5,
          width: double.infinity,
          child: Wrap(
            children: <Widget>[
              FractionallySizedBox(
                widthFactor: 0.2,
                child: Container(
                  height: SizeConfig.heightMultiplier * 2.5,
                  color: AppColors.partOneColor,
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.3,
                child: Container(
                  height: SizeConfig.heightMultiplier * 2.5,
                  color: AppColors.partTwoColor,
                ),
              ),
              FractionallySizedBox(
                widthFactor: 0.5,
                child: Container(
                  height: SizeConfig.heightMultiplier * 2.5,
                  color: AppColors.partThreeColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.heightMultiplier * 1.5625,
        ),
        Wrap(
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 0.2,
              child: Center(
                child: Text('30%'),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.3,
              child: Center(
                child: Text('24%'),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Center(
                child: Text('46%'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
