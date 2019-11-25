import 'package:flutter/material.dart';
import 'package:heathier/core/constants/routes.dart';
import 'package:heathier/core/models/MultiSelection.dart';
import 'package:heathier/core/viewmodels/base_model.dart';
import 'package:heathier/ui/widgets/activity.dart';
import 'package:heathier/ui/widgets/sign_up_multi_selection.dart';
import 'package:heathier/ui/widgets/tells_about_you.dart';

class SignUpViewModel extends BaseModel implements ChangeNotifier {
  var currentIndex = 0;

  final List elements = <Widget>[
    TellsAboutYou(),
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
    Activity(),
    SignUpMultiSelection(
      title: 'Do you follow any diet?',
      subTitle: 'We need these information for further calculations',
      elements: [
        MultiSelection(
          'No',
        ),
        MultiSelection(
          'Vegan',
        ),
        MultiSelection(
          'Vegeterian',
        ),
        MultiSelection(
          'Keto',
        ),
      ],
    ),
    SignUpMultiSelection(
      title: 'Do you have any food allergy?',
      subTitle: 'We need this information to improve your experience',
      enableMultiSelection: true,
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
  ];

  bool get isSkipAvailable {
    if (currentIndex == 1)
      return true;
    else
      return false;
  }

  bool get isNextAvailable {
    if (currentIndex == 4)
      return false;
    else
      return true;
  }

  bool get isPreviousAvailable {
    if (currentIndex == 0 || currentIndex == 1)
      return false;
    else
      return true;
  }

  onRightButtonClicked(BuildContext context) {
    if (currentIndex < 4) {
      currentIndex++;
      notifyListeners();
    } else {
      Navigator.of(context).pushNamedAndRemoveUntil(
        Routes.Home,
        (Route<dynamic> route) => false,
      );
    }
  }

  onLeftButtonClicked() {
    if (currentIndex == 0) {
      return;
    } else if (currentIndex == 1) {
      // go to home
    } else {
      currentIndex--;
      notifyListeners();
    }
  }
}
