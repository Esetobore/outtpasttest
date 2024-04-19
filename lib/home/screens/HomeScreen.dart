import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outtapptest/constants/image_paths.dart';
import 'package:outtapptest/home/addaccount/bottomsheetscreens/account_buttom_sheet1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
      return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top of the Sound",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search_rounded),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Top Beats",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              CarouselSlider.builder(
                itemCount: 5,
                options: CarouselOptions(
                  height: 220,
                  viewportFraction: 0.6,
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      height: 220,
                      width: 220,
                      child: Image.asset(
                          OTImagePaths.songCover3,
                          fit: BoxFit.cover
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 30,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Drops",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "Feel It",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              CarouselSlider.builder(
                itemCount: 5,
                options: CarouselOptions(
                  height: 180,
                  viewportFraction: 0.5,
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder: (context, itemIndex, pageViewIndex) {
                  return GestureDetector(
                    onTap: (){
                      Get.bottomSheet(AccountBottomSheet1(isDarkMode: isDarkMode));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        height: 180,
                        width: 180,
                        child: Image.asset(
                            OTImagePaths.songCover1,
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Drops",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "Feel It",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
