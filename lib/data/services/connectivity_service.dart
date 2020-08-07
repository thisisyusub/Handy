import 'package:connectivity/connectivity.dart';

/// service to check connectivity status of device
class ConnectivityService {
  /// provides singleton instance of [ConnectivityService]
  factory ConnectivityService() {
    return _instance;
  }

  ConnectivityService._internal();

  static final ConnectivityService _instance = ConnectivityService._internal();

  /// method checks the connection and return [true]
  /// if [mobile] or [wifi] is connected
  Future<bool> isConnected() async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      return true;
    } else {
      return false;
    }
  }
}
