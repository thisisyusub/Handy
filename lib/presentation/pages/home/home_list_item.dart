import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../shared/app_colors.dart';

class HomeListItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final Widget rightTopWidget;
  final Widget leftBottomWidget;
  final Widget rightBottomWidget;

  HomeListItem({
    this.iconPath,
    this.title,
    this.rightTopWidget,
    this.leftBottomWidget,
    this.rightBottomWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      padding: const EdgeInsets.only(left: 12, right: 28, top: 22, bottom: 25),
      decoration: BoxDecoration(
        color: AppColors.appBackgroundColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 1,
            color: AppColors.homeListItemShadowColor,
            offset: Offset(0.0, 7.0),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SvgPicture.asset(
                  iconPath,
                  width: 22,
                  height: 22,
                ),
              ),
              Expanded(
                flex: 6,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF818181),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: rightTopWidget,
              ),
            ],
          ),
          const SizedBox(height: 70),
          Row(
            children: [
              Expanded(
                child: Visibility(
                  visible: false,
                  child: SvgPicture.asset(iconPath, width: 22, height: 22),
                ),
              ),
              Expanded(
                flex: 6,
                child: leftBottomWidget,
              ),
              Expanded(
                flex: 2,
                child: rightBottomWidget,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
