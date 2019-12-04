import 'package:flutter/material.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/utils/size_config.dart';

class DateControllerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.heightMultiplier * 0.9375,
        horizontal: SizeConfig.widthMultiplier * 2.222,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(
          SizeConfig.widthMultiplier * 4.444,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(Icons.arrow_back_ios),
          Text(
            '2 December 2019',
            style: AppTextStyles.fontSize14RegularStyle,
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
