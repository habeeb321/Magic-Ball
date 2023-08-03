import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:magic_ball/controller/ball_controller.dart';
import 'package:magic_ball/view/widgets/sphere_of_destiny.dart';
import 'package:magic_ball/view/widgets/shadow_of_doubt.dart';

class Magic8Ball extends GetView<BallController> {
  const Magic8Ball({super.key});

  static const lightSource = Offset(0, -0.75);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BallController());
    final size = Size.square(MediaQuery.of(context).size.shortestSide);
    return Stack(
      children: [
        ShadowOfDoubt(diameter: size.shortestSide),
        SphereOfDestiny(lightSource: lightSource, diameter: size.shortestSide),
      ],
    );
  }
}
