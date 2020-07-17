import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../shared/app_text_styles.dart';
import '../../utils/size_config.dart';

class DateController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
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
              '${DateFormat('d MMMM  yyyy').format(DateTime.now())}',
              style: AppTextStyles.fontSize14RegularStyle,
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
