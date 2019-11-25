import 'package:flutter/cupertino.dart';
import 'package:heathier/core/constants/routes.dart';
import 'package:heathier/core/viewmodels/base_model.dart';

class SignUpButtonViewModel extends BaseModel {
  void onSignUpClicked(BuildContext context) {
    Navigator.pushNamed(context, Routes.SignUp);
  }
}
