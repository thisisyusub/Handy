class RegisterResponse {
  final String uid;
  final String success;
  final String message;

  RegisterResponse({
    this.uid,
    this.success,
    this.message,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
      uid: json['uid'],
      success: json['success'],
      message: json['message'],
    );
  }
}
