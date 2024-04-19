import 'package:flutter/material.dart';

import '../../../constants/default_text_strings.dart';
import '../../../constants/image_paths.dart';
import '../widgets/genre_text.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        children: [
          Text(
            "Sounds & Beats",
            style: Theme.of(context).textTheme.displayMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            OTTextStrings.onboardScreenTittle1,
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          Image.asset(
            OTImagePaths.songCover1,
            height: 400,
            width: 400,
          ),
          const SizedBox(height:20,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GenreText(title: "Afro-beat"),
              SizedBox(width: 20,),
              GenreText(title: "Amapiano"),
            ],
          ),
        ],
      ),
    );
  }
}