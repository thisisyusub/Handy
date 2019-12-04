class User {
  String email;
  String userName;
  int age;
  String gender;
  String goal;
  double height;
  double weight;
  String activityLevel;
  List<String> diet = [];

  User({
    this.email,
    this.userName,
    this.age,
    this.gender,
    this.goal,
    this.height,
    this.weight,
    this.activityLevel,
    this.diet,
  });

  User copyWith({
    String newEmail,
    String newUserName,
    int newAge,
    String newGender,
    String newGoal,
    double newHeight,
    double newWeight,
    String newActivityLevel,
    List<String> newDiet,
  }) {
    return User(
      email: newEmail ?? this.email,
      userName: newUserName ?? this.userName,
      age: newAge ?? this.age,
      gender: newGender ?? this.gender,
      goal: newGoal ?? this.goal,
      height: newHeight ?? this.height,
      weight: newWeight ?? this.weight,
      activityLevel: newActivityLevel ?? this.activityLevel,
      diet: newDiet ?? this.diet,
    );
  }
}
