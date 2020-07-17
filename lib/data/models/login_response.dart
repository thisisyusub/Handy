class LoginResponse {
  List<Login> login;
  String success;
  String message;

  LoginResponse({this.login, this.success, this.message});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    if (json['login'] != null) {
      login = new List<Login>();
      json['login'].forEach((v) {
        login.add(new Login.fromJson(v));
      });
    }
    success = json['success'];
    message = json['message'];
  }
}

class Login {
  String name;
  String email;
  String uid;

  Login({this.name, this.email, this.uid});

  Login.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    uid = json['uid'];
  }
}
