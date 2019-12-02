import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:heathier/presentation_layer/shared/app_colors.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

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
          width: SizeConfig.blockWidth * 82.222,
          padding: EdgeInsets.only(
            left: SizeConfig.blockWidth * 4.444,
            right: SizeConfig.blockWidth * 8.8888,
            top: SizeConfig.blockHeight * 3.4375 * SizeConfig.textScaleFactor,
            bottom: SizeConfig.blockHeight * 5,
          ),
          margin: EdgeInsets.only(
            bottom: SizeConfig.blockHeight * 5.15625,
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
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                title,
                                style: AppTextStyles.fontSize12wRegularV2Style,
                              ),
                            ],
                          ),
                          rightTopWidget,
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockHeight * 3.75,
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
