import 'package:flutter/material.dart';

class WindowOfOpportunity extends StatelessWidget {
  const WindowOfOpportunity(
      {Key? key, required this.lightSource, required this.child})
      : super(key: key);

  final Offset lightSource;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final innerShadowWidth = lightSource.distance * 0.1;
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          stops: [1 - innerShadowWidth, 1],
          colors: const [Color(0x661F1F1F), Colors.black],
        ),
      ),
      child: child,
    );
  }
}
