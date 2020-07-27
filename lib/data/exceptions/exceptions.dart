class HandyHttpException implements Exception {
  @override
  String toString() => 'Http Exception occurred!';
}

class HandyPlatformException implements Exception {
  @override
  String toString() => 'Platform Exception occurred!';
}

class HandyException implements Exception {
  @override
  String toString() => 'Handy Exception occurred!';
}