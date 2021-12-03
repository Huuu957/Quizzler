import 'package:flutter/material.dart';
import 'package:who_wants_to_be_a_millionaire/constants/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Text(
                    'Who Wants to Be a Millionaire?',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Enter your name below pls :)',
                  ),
                  const Spacer(),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Column(children: [
                      const Text(
                        'Let\'s Start The Quiz Chose Your Mode',
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(
                            kDefaultPadding * 0.75), //which Equals 15
                        decoration: const BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Text(
                          'Start The Quiz',
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(
                            kDefaultPadding * 0.75), //which Equals 15
                        decoration: const BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Text(
                          'something',
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ]),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
