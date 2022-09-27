import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
          body: CallbackShortcuts(
        bindings: {
          const SingleActivator(LogicalKeyboardKey.enter): () {
            context.go('/check_wifi');
          }
        },
        child: Focus(
          autofocus: true,
          child: Column(
            children: [
              const Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 48.0),
                  child: Text("Press OK to continue"),
                ),
              ),
              Expanded(
                child: Center(
                    child: Image.asset(
                  "assets/images/sony-remote-internet-lounge.jpg",
                  scale: 0.8,
                )),
              ),
            ],
          ),
        ),
      )

          /*
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => context.go('/page2'),
                child: const Text('Go to page 2'),
              ),
            ],
          ),
        ),*/
          );
}
