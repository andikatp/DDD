import 'package:ddd_raja/presentation/location/screens/location_page.dart';
import 'package:flutter/material.dart';

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
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<LocationPage>(
                  builder: (context) => const LocationPage(),
                ),
              ),
              child: const Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
