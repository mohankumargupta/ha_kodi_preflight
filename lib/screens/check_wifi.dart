import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ha_kodi_preflight/providers/wifi.dart';

class CheckWifiScreen extends ConsumerWidget {
  const CheckWifiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wifi = ref.watch(wifiStatusProvider);

    return Scaffold(
      body: CallbackShortcuts(
        bindings: {
          const SingleActivator(LogicalKeyboardKey.enter): () {
            context.go('/ha_search');
          }
        },
        child: Focus(
          autofocus: true,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(child: Text("Checking Wifi")),
                Expanded(
                  child: Center(
                      child: wifi.when(
                          data: (item) {
                            switch (item) {
                              case ConnectivityResult.wifi:
                                return const Text("Wifi connection");

                              case ConnectivityResult.ethernet:
                                return const Text("Ethernet connection");

                              default:
                                return const Text(
                                    "No connection(wifi or ethernet)");
                            }
                          },
                          loading: () {},
                          error: (e, st) {})),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
