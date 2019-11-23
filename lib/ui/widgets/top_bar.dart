import 'package:flutter/material.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/widgets/top_bar_bottom_half.dart';
import 'package:heathier/ui/widgets/top_bar_top_half.dart';
import 'package:heathier/utils/size_config.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.blockHeight * 33,
      padding: EdgeInsets.fromLTRB(
        SizeConfig.blockWidth * 8.8888,
        SizeConfig.blockHeight * 7.8125,
        SizeConfig.blockWidth * 8.8888,
        SizeConfig.blockHeight * 3.125,
      ),
      margin: EdgeInsets.only(
        bottom: SizeConfig.blockHeight * 3.90625,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            spreadRadius: 1,
            color: AppColors.topBarShadowColor,
            offset: Offset(
              0.0,
              2.0,
            ),
          ),
        ],
        color: AppColors.topBarColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TopBarTopHalf(),
          SizedBox(
            height: SizeConfig.blockHeight * 3.90625,
          ),
          TopBarBottomHalf(),
        ],
      ),
    );
  }
}
