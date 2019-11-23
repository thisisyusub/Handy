import 'package:flutter/material.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/utils/glass_painter.dart';
import 'package:heathier/utils/moon_painter.dart';
import 'package:heathier/utils/size_config.dart';

import 'goal_item.dart';

class TopBarBottomHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              AppStrings.yourGoalsForToday,
              style: AppTextStyles.mediumTextStyle,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GoalItem(
                    goalIcon: Icons.favorite,
                    goalTitle: '1200 kCal',
                  ),
                  SizedBox(
                    width: SizeConfig.blockWidth * 2,
                  ),
                  GoalItem(
                    customPainter: GlassPainter(),
                    goalTitle: '8 glasses',
                    isPainterIcon: true,
                  ),
                  SizedBox(
                    width: SizeConfig.blockWidth * 2,
                  ),
                  GoalItem(
                    customPainter: MoonPainter(),
                    goalIcon: Icons.watch_later,
                    goalTitle: '8 hours',
                    isPainterIcon: true,
                    isMoon: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
