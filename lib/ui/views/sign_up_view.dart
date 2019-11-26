import 'package:flutter/material.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/core/viewmodels/views/sign_up_view_model.dart';
import 'package:heathier/locator.dart';
import 'package:heathier/ui/base_widget.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/ui/widgets/sign_up_activity.dart';
import 'package:heathier/ui/widgets/sign_up_multi_selection.dart';
import 'package:heathier/ui/widgets/tells_about_you.dart';
import 'package:heathier/utils/size_config.dart';

class SignUpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<SignUpViewModel>(
      model: locator.get<SignUpViewModel>(),
      builder: (context, model, child) {
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
                    index: model.currentIndex,
                    children: [
                      TellsAboutYou(),
                      SignUpMultiSelection(
                        multiSelection: model.elements[0],
                      ),
                      SignUpActivity(
                        elements: model.elements[1].elements,
                      ),
                      SignUpMultiSelection(
                        multiSelection: model.elements[2],
                      ),
                      SignUpMultiSelection(
                        multiSelection: model.elements[3],
                        enableMultiSelection: true,
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
                        onTap: () => model.onLeftButtonClicked(context),
                        child: Text(
                          model.isSkipAvailable
                              ? AppStrings.skip
                              : (model.isPreviousAvailable
                                  ? AppStrings.previous
                                  : ''),
                          style: AppTextStyles.fontSize16WithColorStyle,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => model.onRightButtonClicked(context),
                        child: Text(
                          model.isNextAvailable
                              ? AppStrings.next
                              : AppStrings.start,
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
      },
    );
  }
}
