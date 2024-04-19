import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_paths.dart';
import '../widgets/stacked_image_view.dart';
import '../../authentication/screens/auth_bottom_sheet1.dart';
import '../widgets/onboarding_skip_button.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final isDarkModeS = Theme.of(context).brightness == Brightness.light;
    return Column(
      children: [
        const OnBoardingSkip(),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 50),
          child: Column(
            children: [
              Text(
                "Sounds & Beats",
                style: Theme.of(context).textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                OTImagePaths.pulse_globe,
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              const StackedImageVIew(),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return AuthBottomSheet1(isDarkMode: isDarkMode);
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50),
                    )),
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(isDarkModeS ? Colors.black : Colors.white),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  ),
                  // Button padding
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20.0), // Button border radius
                    ),
                  ),
                ),
                child: Text(
                  'Signup',
                  style: TextStyle(
                    color: isDarkModeS ? OTColors.primaryColorW : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign In Instead",
                    style: TextStyle(
                        color: OTColors.lavender, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
