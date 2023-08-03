import 'package:flutter/material.dart';

class SphereOfDestiny extends StatelessWidget {
  const SphereOfDestiny({Key? key, required this.diameter, required Offset lightSource}) : super(key: key);

  final double diameter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.75),
            colors: [Colors.grey, Colors.black],
          ),
          shape: BoxShape.circle),
    );
  }
}
