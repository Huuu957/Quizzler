import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class QuestionController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => _animation;

  @override
  void onInit() {
    // Our animation duration is 60 s
    // so our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: const Duration(seconds: 15), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    _animationController.forward();
    super.onInit();
  }
}
