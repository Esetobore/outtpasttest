import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:outtapptest/constants/image_paths.dart';
import '../../../constants/colors.dart';

class AccountBottomSheet4 extends StatelessWidget {
  const AccountBottomSheet4({
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
      height: 600,
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
                  "Add Bank Account",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 50,
                ),
                IconButton(onPressed: () {Get.back();}, icon: const Icon(Icons.close))
              ],
            ),
            const SizedBox(height: 50,),

            Column(
              children: [
                Image.asset(
                  OTImagePaths.verified,
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 10,),
                Text(
                  "Account Added",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),


            Container(
              decoration: BoxDecoration(
                color: isDarkMode ? OTColors.primaryColorB : OTColors.primaryColorW,
                borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account Name: ",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Account Number:",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Bank: ",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
