import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heathier/ui/shared/app_colors.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/ui/widgets/custom_progress_bar.dart';
import 'package:heathier/utils/size_config.dart';

class HomeListItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final Color progressBarColor;
  final Widget action;
  final String indicator;
  final String indicatorTitle;

  HomeListItem({
    @required this.iconPath,
    @required this.title,
    @required this.progressBarColor,
    @required this.action,
    @required this.indicator,
    @required this.indicatorTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: SizeConfig.blockWidth * 82.222,
          height: SizeConfig.blockHeight * 20 * SizeConfig.textScaleFactor,
          padding: EdgeInsets.only(
            left: SizeConfig.blockWidth * 4.444,
            right: SizeConfig.blockWidth * 8.8888,
            top: SizeConfig.blockHeight * 3.4375 * SizeConfig.textScaleFactor,
            bottom: SizeConfig.blockHeight * 5,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                color: AppColors.goalsListItemShadowColor,
                offset: Offset(
                  0.0,
                  5.0,
                ),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                iconPath,
                height:
                    SizeConfig.blockHeight * 2.5 * SizeConfig.textScaleFactor,
                width:
                    SizeConfig.blockWidth * 4.444 * SizeConfig.textScaleFactor,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.blockWidth * 4.444,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                title,
                                style: AppTextStyles.fontSize12withColorStyle,
                              ),
                            ],
                          ),
                          CustomProgressBar(progressBarColor),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockHeight *
                            4.6875 *
                            SizeConfig.textScaleFactor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Wrap(
                              direction: Axis.horizontal,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: <Widget>[
                                Text(
                                  indicator,
                                  style: AppTextStyles.fontSize14withColorStyle,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  indicatorTitle,
                                  style: AppTextStyles.fontSize8withColorStyle,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          action,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.blockHeight * 3.75,
        ),
      ],
    );
  }
}
