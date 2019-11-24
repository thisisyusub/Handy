import 'package:flutter/material.dart';
import 'package:heathier/core/constants/app_strings.dart';
import 'package:heathier/core/models/MultiSelection.dart';
import 'package:heathier/ui/shared/app_text_styles.dart';
import 'package:heathier/ui/widgets/sign_up_first_part.dart';
import 'package:heathier/utils/size_config.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var index = 0;

  List elements = [
    SignUpMultiSelection(
      title: 'Do you have any food allergy?',
      subTitle: 'We need this information to improve your experience',
      elements: [
        MultiSelection(
          'No',
        ),
        MultiSelection(
          'Caffeine sensitivity',
        ),
        MultiSelection(
          'Lactose intolerance',
        ),
        MultiSelection(
          'Celiac disease',
        ),
      ],
    ),
    SignUpMultiSelection(
      title: 'I am using this app to',
      subTitle: 'We need these information for further calculations',
      elements: [
        MultiSelection(
          'Maintain my lifestyle',
        ),
        MultiSelection(
          'Loss weight',
        ),
        MultiSelection(
          'Gain weight',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            elements[index],
            Padding(
              padding: EdgeInsets.only(
                bottom: SizeConfig.blockHeight * 4.6875,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppStrings.skip,
                    style: AppTextStyles.fontSize16WithColorStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index++;
                      });
                    },
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
