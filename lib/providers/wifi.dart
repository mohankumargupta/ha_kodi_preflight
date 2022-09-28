import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:network_info_plus/network_info_plus.dart';

final wifiStatusProvider = FutureProvider<ConnectivityResult>((ref) {
  return Connectivity().checkConnectivity();
});

class WifiDetails {
  String ssid;
  String ipAddress;
  WifiDetails(this.ssid, this.ipAddress);
}

final wifiProvider = FutureProvider<WifiDetails?>((ref) async {
  final provider = await ref.watch(wifiStatusProvider.future);
  await Future.delayed(const Duration(seconds: 5));

  switch (provider) {
    case ConnectivityResult.wifi:
      final ipAddress = await NetworkInfo().getWifiIP();
      final wifiName = await NetworkInfo().getWifiName();
      return WifiDetails(wifiName!, ipAddress!);
    default:
      return null;
  }
});
