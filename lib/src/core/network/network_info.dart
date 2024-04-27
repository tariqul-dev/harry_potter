import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool>? get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  // final List<ConnectivityResult> connectivityResult = await (Connectivity().checkConnectivity());
  final List<ConnectivityResult> connectivityResult;

  NetworkInfoImpl(this.connectivityResult);

  @override
  Future<bool>? get isConnected =>
      Future.value(
          connectivityResult.contains(ConnectivityResult.mobile) ||
          connectivityResult.contains(ConnectivityResult.wifi)
      );
}
