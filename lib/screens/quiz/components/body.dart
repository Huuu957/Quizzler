import 'package:flutter/material.dart';
import 'package:who_wants_to_be_a_millionaire/constants/constants.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProgressBar(),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Question 1',
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: kSecondaryColor),
                    children: [
                      TextSpan(
                        text: '/10',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: kSecondaryColor),
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 3),
                const SizedBox(
                  height: kDefaultPadding,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
