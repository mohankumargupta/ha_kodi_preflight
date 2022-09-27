import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckWifiScreen extends StatelessWidget {
  const CheckWifiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CallbackShortcuts(
          bindings: {},
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Checking Wifi"),
              ],
            ),
          ),
        ),
      );
}
