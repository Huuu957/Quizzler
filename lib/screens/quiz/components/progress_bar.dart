import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:who_wants_to_be_a_millionaire/constants/constants.dart';
import 'package:who_wants_to_be_a_millionaire/controllers/question_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                //LayoutBuilder is like builder but with constraints
                LayoutBuilder(
                  builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                // To position a widget on a stack of widgets
                Positioned.fill(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            '${(controller.animation.value * 15).round()} sec'),
                        const Icon(
                          Icons.access_alarm,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
