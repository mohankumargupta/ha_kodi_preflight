import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';

class HomeAssistantSearchScreen extends StatelessWidget {
  const HomeAssistantSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CallbackShortcuts(
          bindings: {
            const SingleActivator(LogicalKeyboardKey.enter): () {
              context.go('/ha_auth');
            }
          },
          child: Focus(
            autofocus: true,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Home Assistant Search"),
                ],
              ),
            ),
          ),
        ),
      );
}
