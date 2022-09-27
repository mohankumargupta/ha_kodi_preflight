import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';

class HomeAssistantAuthScreen extends StatelessWidget {
  const HomeAssistantAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CallbackShortcuts(
          bindings: {
            const SingleActivator(LogicalKeyboardKey.enter): () {
              context.go('/home');
            }
          },
          child: Focus(
            autofocus: true,
            child: Center(
              child: Column(
                children: const [
                  Flexible(
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 48.0),
                          child: Text("Home Assistant Authorization",
                              style: TextStyle(fontSize: 48.0)))),
                ],
              ),
            ),
          ),
        ),
      );
}
