import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/default_text_strings.dart';
import '../../../constants/image_paths.dart';
import '../widgets/onboarding_skip_button.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              Text(
                OTTextStrings.onboardScreenTittle2,
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: OTColors.sussie,
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(OTImagePaths.songArtist),
                        ),
                        SizedBox(width: 10,),
                        Text("Sarz Happiness      0.53"),
                        SizedBox(width: 10,),
                        Icon(Icons.play_circle_outline)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Image.asset(
                OTImagePaths.songCover2,
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Explore Sounds",
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 20,),
                  const Icon(Icons.add_circle_outline_outlined),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}