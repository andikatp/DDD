import 'package:ddd_raja/presentation/screens/location/location_page.dart';
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
            Text('Go To Next Page'),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocationPage(),
                    )),
                child: Text('Next Page'))
          ],
        ),
      ),
    );
  }
}
