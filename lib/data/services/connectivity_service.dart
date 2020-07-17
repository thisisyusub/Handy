import 'package:connectivity/connectivity.dart';

class ConnectivityService {
  ConnectivityService._internal();

  static ConnectivityService _instance;

  static ConnectivityService get getInstance =>
      _instance = _instance ?? ConnectivityService._internal();

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
