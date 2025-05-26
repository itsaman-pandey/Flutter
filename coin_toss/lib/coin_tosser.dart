import 'package:flutter/material.dart';
import 'dart:math';

class CoinTosser extends StatefulWidget {
  const CoinTosser({super.key});

  @override
  State<CoinTosser> createState() => _CoinTosserState();
}

class _CoinTosserState extends State<CoinTosser>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  var activeImage = "assets/images/head.png";
  var activeText = "Head";

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _animation = Tween<double>(begin: 0, end: pi).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset(); // Reset after one flip
      }
    });
  }

  void toss() {
    _controller.reset();

    // Delay halfway through flip to change image
    Future.delayed(const Duration(milliseconds: 300), () {
      var currentState = Random().nextInt(1000);
      setState(() {
        if (currentState % 2 == 0) {
          activeImage = "assets/images/head.png";
          activeText = "Head";
        } else {
          activeImage = "assets/images/tail.png";
          activeText = "Tail";
        }
      });
    });

    _controller.forward(); // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationX(_animation.value),
            child: Image.asset(activeImage, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 10),
        Text(activeText, style: const TextStyle(fontSize: 35)),
        const SizedBox(height: 50),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            padding: EdgeInsets.only(left: 20, right: 20,top: 10,bottom: 10),
          ),
          onPressed: toss,
          child: const Text("  Flip  ", style: TextStyle(fontSize: 28)),
        ),
      ],
    );
  }
}
