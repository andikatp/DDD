import 'package:ddd_raja/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Go To Next Page'),
            ElevatedButton(
              onPressed: () => context.pushNamed(Routes.location),
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
