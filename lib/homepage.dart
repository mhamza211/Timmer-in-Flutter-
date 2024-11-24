import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int timeleft = 5;

  void _startCountDown() {
    if (timeleft > 0) {
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          timeleft--;
        });
        _startCountDown();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              timeleft == 0 ? 'Done' : timeleft.toString(),
              style: const TextStyle(fontSize: 50),
            ),
            MaterialButton(
              onPressed: _startCountDown,
              color: Colors.purple,
              child: const Text(
                'START',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
