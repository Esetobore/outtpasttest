import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outtapptest/constants/image_paths.dart';
import '../../../constants/colors.dart';
import 'auth_bottom_sheet4.dart';

class AuthBottomSheet3 extends StatelessWidget {
  const AuthBottomSheet3({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isDarkMode ? OTColors.primaryColorB : OTColors.primaryColorW,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40), // Adjust the radius as needed
          topRight: Radius.circular(40), // Adjust the radius as needed
        ),
      ),
      height: 550,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SignUp with Phone",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 50,
                ),
                IconButton(onPressed: () {Get.back();}, icon: const Icon(Icons.close))
              ],
            ),
            const SizedBox(height: 50,),

            GestureDetector(
              onTap: () {
                Get.back();
                Get.bottomSheet(AuthBottomSheet4(isDarkMode: isDarkMode));
              },
              child: Column(
                children: [
                  Image.asset(
                    OTImagePaths.check,
                  ),
                  const SizedBox(height: 10,),
                  Text(
                      "Phone Number Verified",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
