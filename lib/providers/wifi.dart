import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

final wifiStatusProvider = FutureProvider<ConnectivityResult>((ref) {
  return Connectivity().checkConnectivity();
});
