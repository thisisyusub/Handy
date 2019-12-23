class RegisterResponse {
  final String success;
  final String message;

  RegisterResponse({
    this.success,
    this.message,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(
      success: json['success'],
      message: json['message'],
    );
  }
}
