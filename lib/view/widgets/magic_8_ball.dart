import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:magic_ball/controller/ball_controller.dart';
import 'package:magic_ball/view/widgets/magic_bal.dart';

class Magic8Ball extends GetView<BallController> {
  const Magic8Ball({super.key});

  static const lightSource = Offset(0, -0.75);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BallController());
    final size = Size.square(MediaQuery.of(context).size.shortestSide);
    return SphereOfDestiny(
        lightSource: lightSource, diameter: size.shortestSide);
  }
}
