
import 'package:handy/data_layer/models/registration.dart';

class UserRepository {
  var _currentUser = User();

  void addEmail(String email) {
    _currentUser = _currentUser.copyWith(newEmail: email);
  }

  void addName(String userName) {
    _currentUser = _currentUser.copyWith(newUserName: userName);
  }

  void addAge(int age) {
    _currentUser = _currentUser.copyWith(newAge: age);
  }

  void addGender(String gender) {
    _currentUser = _currentUser.copyWith(newGender: gender);
  }

  void addGoal(String goal) {
    _currentUser = _currentUser.copyWith(newGoal: goal);
  }

  void addHeight(double height) {
    _currentUser = _currentUser.copyWith(newHeight: height);
  }

  void addWeight(double weight) {
    _currentUser = _currentUser.copyWith(newWeight: weight);
  }

  void addActivityLevel(String activityLevel) {
    _currentUser = _currentUser.copyWith(newActivityLevel: activityLevel);
  }
}
