import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:magic_ball/controller/ball_controller.dart';

class HomeScreen extends GetView<BallController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BallController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Magic Ball',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: const SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Sample'),
            ),
          ],
        ),
      ),
    );
  }
}
