import 'package:flutter/material.dart';
import 'dart:math';

class OpacityAnimation extends StatefulWidget {
  const OpacityAnimation({super.key});

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation>
    with TickerProviderStateMixin {
  late AnimationController animation;
  late Animation<double> _fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 1).animate(animation);

    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animation.reverse();
      } else if (status == AnimationStatus.dismissed) {
        animation.forward();
      }
    });
    animation.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _fadeInFadeOut,
      builder: (_, __) {
        const colors = Colors.primaries;
        final rnd = Random().nextInt(colors.length - 1);

        return Opacity(
          opacity: _fadeInFadeOut.value,
          child: Container(
            width: 100,
            height: 100,
            color: colors.elementAt(rnd),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }
}
