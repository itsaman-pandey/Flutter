import 'package:flutter/material.dart';
import 'package:coin_toss/coin_tosser.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color.fromARGB(61, 29, 54, 104), Colors.white],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Heads or Tails Let's Check",
              style: TextStyle(
                color: const Color.fromARGB(255, 48, 38, 1),
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            Image.asset(
              "assets/images/ani.png",
              // height: double.infinity,
              width: double.infinity,
            ),
           
            CoinTosser(),
          ],
        ),
      ),
    );
  }
}
