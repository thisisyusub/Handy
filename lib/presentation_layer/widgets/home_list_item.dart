import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:handy/presentation_layer/shared/app_colors.dart';
import 'package:handy/presentation_layer/shared/app_text_styles.dart';
import 'package:handy/utils/size_config.dart';

class HomeListItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final Widget rightTopWidget;
  final Widget leftBottomWidget;
  final Widget rightBottomWidget;

  HomeListItem({
    @required this.iconPath,
    @required this.title,
    @required this.rightTopWidget,
    @required this.leftBottomWidget,
    @required this.rightBottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: SizeConfig.widthMultiplier * 82.222,
          padding: EdgeInsets.only(
            left: SizeConfig.widthMultiplier * 4.444,
            right: SizeConfig.widthMultiplier * 8.8888,
            top: SizeConfig.heightMultiplier *
                3.4375 *
                SizeConfig.textScaleFactor,
            bottom: SizeConfig.heightMultiplier * 5,
          ),
          margin: EdgeInsets.only(
            bottom: SizeConfig.heightMultiplier * 5.15625,
          ),
          decoration: BoxDecoration(
            color: AppColors.appBackgroundColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                color: AppColors.homeListItemShadowColor,
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
                height: SizeConfig.heightMultiplier *
                    2.5 *
                    SizeConfig.textScaleFactor,
                width: SizeConfig.widthMultiplier *
                    4.444 *
                    SizeConfig.textScaleFactor,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.widthMultiplier * 4.444,
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Hero(
                                tag: '$title',
                                child: Text(
                                  title,
                                  style: AppTextStyles.fontSize12RegularV2Style,
                                ),
                              ),
                            ],
                          ),
                          rightTopWidget,
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3.75,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: leftBottomWidget,
                          ),
                          rightBottomWidget,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
