import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:outtapptest/home/addaccount/bottomsheetscreens/account_buttom_sheet2.dart';
import '../../../constants/colors.dart';

class AccountBottomSheet1 extends StatelessWidget {
  const AccountBottomSheet1({
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
                  "Earn from Streaming",
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
              child: Column(
                children: [
                  Text(
                    "#0",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 10,),
                  Text(
                      "Phone Number Verified",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            SizedBox(
              width: 200,
              child: OutlineGradientButton(
                onTap: () {
                  Get.back();
                  Get.bottomSheet(AccountBottomSheet2(isDarkMode: isDarkMode));
                },
                gradient: const LinearGradient(
                  colors: [Colors.purple, Colors.pink, Colors.yellow],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                strokeWidth: 2,
                radius: const Radius.circular(40.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Add Bank Account",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(width: 5),
                      const Icon(Icons.arrow_forward),
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
