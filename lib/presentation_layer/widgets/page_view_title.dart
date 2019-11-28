import 'package:flutter/material.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';

class PageViewTitle extends StatelessWidget {
  final String title;
  final String subTitle;

  PageViewTitle({
    @required this.title,
    @required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: AppTextStyles.fontSize24BoldStyle,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          subTitle,
          style: AppTextStyles.fontSize10Style,
        ),
      ],
    );
  }
}
