import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page2ScreenWithPush extends StatelessWidget {
  const Page2ScreenWithPush(this.pushCount, {Key? key}) : super(key: key);
  final int pushCount;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('page 2 w/ push count $pushCount'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () => context.go('/'),
                  child: const Text('Go to home page'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: ElevatedButton(
                  onPressed: () => context.push(
                    '/page2?push-count=${pushCount + 1}',
                  ),
                  child: const Text('Push page 2 (again)'),
                ),
              ),
            ],
          ),
        ),
      );
}
