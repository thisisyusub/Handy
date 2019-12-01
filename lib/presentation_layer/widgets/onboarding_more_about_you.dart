import 'package:flutter/material.dart';
import 'package:heathier/contants/app_strings.dart';
import 'package:heathier/presentation_layer/widgets/page_view_title.dart';

class OnBoardingMoreAboutYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        PageViewTitle(
          title: AppStrings.moreAboutYou,
          subTitle: AppStrings.weNeedTheseInformationToCustomizeYourExp,
        ),
      ],),
    );
  }
}
