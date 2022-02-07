import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1ScreenWithPush extends StatelessWidget {
  const Page1ScreenWithPush({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('page 1')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => context.push('/page2?push-count=1'),
                child: const Text('Push page 2'),
              ),
            ],
          ),
        ),
      );
}
