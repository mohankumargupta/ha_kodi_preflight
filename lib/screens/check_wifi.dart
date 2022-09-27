import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class CheckWifiScreen extends StatelessWidget {
  const CheckWifiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
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
                children: const [
                  Flexible(child: Text("Checking Wifi")),
                  Expanded(
                    child: Center(child: Text("Starting")),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
