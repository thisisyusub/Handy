import 'package:flutter/material.dart';
import 'package:heathier/core/constants/routes.dart';
import 'package:heathier/core/models/multi_selection.dart';
import 'package:heathier/core/repositories/multi_selection_repository.dart';
import 'package:heathier/core/viewmodels/base_model.dart';
import 'package:heathier/locator.dart';

class SignUpViewModel extends BaseModel implements ChangeNotifier {
  var currentIndex = 0;
  bool enableMultiSelection = false;
  MultiSelectionRepository _multiSelectionRepository;

  SignUpViewModel() {
    _multiSelectionRepository = locator.get<MultiSelectionRepository>();
  }

  List<MultiSelection> get elements => _multiSelectionRepository.getElements();

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
      _moveToHomePage(context);
    }
    print(currentIndex);
  }

  onLeftButtonClicked(BuildContext context) {
    if (currentIndex == 0) {
      return;
    } else if (currentIndex == 1) {
      _moveToHomePage(context);
    } else {
      currentIndex--;
      notifyListeners();
    }
    print(currentIndex);
  }

  _moveToHomePage(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.Home,
      (Route<dynamic> route) => false,
    );
  }
}
