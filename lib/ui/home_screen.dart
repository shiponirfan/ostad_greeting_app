import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello, World!',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w700, fontSize: 24),
            ),
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            Image.asset('assets/images/flutter_logo.png'),
            ElevatedButton(
                onPressed: () {
                  const snackBar = SnackBar(
                    content: Text('Button Pressed!'),
                    backgroundColor: Colors.green,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15)),
                child: const Text('Press Me'))
          ],
        ),
      ),
    );
  }
}
