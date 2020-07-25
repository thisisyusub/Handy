import 'package:flutter/material.dart';

import '../shared/app_text_styles.dart';
import '../../utils/responsive_helper/size_config.dart';

class PageViewTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  PageViewTitle({
    @required this.title,
    @required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: SizeConfig.heightMultiplier * 9,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: AppTextStyles.fontSize22MediumStyle,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subTitle,
            style: AppTextStyles.fontSize12ColorRegularStyle,
          ),
        ],
      ),
    );
  }
}
