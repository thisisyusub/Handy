import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_icons.dart';
import 'package:heathier/utils/size_config.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: SizeConfig.blockHeight * 8.75,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 7,
            spreadRadius: 1,
            color: AppColors.bottomNavigationShadowColor,
            offset: Offset(
              0.0,
              -5.0,
            ),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () {},
              splashColor: AppColors.bottomNavigationShadowColor,
              highlightColor: AppColors.bottomNavigationShadowColor,
              child: Container(
                child: SvgPicture.asset(
                  AppIcons.path,
                  width: SizeConfig.blockWidth * 3.6111,
                  height: SizeConfig.blockHeight * 2.34375,
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {},
              child: Container(
                child: SvgPicture.asset(
                  AppIcons.profileSelected,
                  width: SizeConfig.blockWidth * 3.6111,
                  height: SizeConfig.blockHeight * 2.34375,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
