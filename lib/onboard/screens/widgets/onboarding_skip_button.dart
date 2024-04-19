import 'package:flutter/material.dart';
import '../../controller/onboard_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              OnboardController.instance.skipPage();
            },
            child: Text(
              "Skip",
              style: Theme.of(context).textTheme.bodySmall,
            )),
      ],
    );
  }
}