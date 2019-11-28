import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/shared/app_text_styles.dart';
import 'package:heathier/presentation_layer/widgets/sign_up_activity.dart';
import 'package:heathier/presentation_layer/widgets/sign_up_multi_selection.dart';
import 'package:heathier/presentation_layer/widgets/tells_about_you.dart';
import 'package:heathier/utils/size_config.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 0,
          horizontal: SizeConfig.blockWidth * 8.888,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: SizeConfig.blockHeight * 19.0625,
            ),
            Expanded(
              child: IndexedStack(
                index: 0,
                children: [
                  TellsAboutYou(),
                  SignUpMultiSelection(
                    multiSelection: null,
                    selectionFunction: null,
                  ),
                  SignUpActivity(
                    elements: null,
                  ),
                  SignUpMultiSelection(
                    multiSelection: null,
                    selectionFunction: null,
                  ),
                  SignUpMultiSelection(
                    multiSelection: null,
                    enableMultiSelection: true,
                    selectionFunction: null,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: SizeConfig.blockHeight * 4.6875,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => null,
                    child: Text(
                      AppStrings.skip,
                      style: AppTextStyles.fontSize16WithColorStyle,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => null,
                    child: Text(
                      AppStrings.next,
                      style: AppTextStyles.fontSize16WithColorStyle,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
