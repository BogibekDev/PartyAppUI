import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: AnimatedPositioned(
            duration: Duration(milliseconds: 5000),
            curve: Curves.easeOut,
            top: value * 30,
            child: child!,
          ),
        );
      },
      onEnd: () {},
      child: child,
    );
  }
}
