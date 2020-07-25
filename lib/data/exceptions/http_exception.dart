class HttpException implements Exception {
  HttpException(this.message);

  final String message;

  @override
  String toString() => message ?? 'Error occurred!';
}