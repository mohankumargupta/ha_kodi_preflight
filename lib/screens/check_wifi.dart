import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ha_kodi_preflight/providers/wifi.dart';

class CheckWifiScreen extends ConsumerWidget {
  const CheckWifiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wifiDetails = ref.watch(wifiProvider);

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
              children: [
                const Flexible(
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 48.0),
                        child: Text("Checking Wifi",
                            style: TextStyle(fontSize: 48.0)))),
                Expanded(
                  child: Center(
                      child: wifiDetails.when(
                          data: (item) {
                            if (item == null) {
                              return const Text("wifi not connected");
                            } else {
                              return Text("${item.ssid} ${item.ipAddress}");
                            }
                          },
                          loading: () => const Text("loading..."),
                          error: (e, st) => const Text("error"))),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
