import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:outtapptest/constants/default_text_strings.dart';
import '../../../constants/colors.dart';
import '../../screens/widgets/otp_pin_put.dart';
import 'auth_bottom_sheet1.dart';
import 'auth_bottom_sheet3.dart';

class AuthBottomSheet2 extends StatelessWidget {
  const AuthBottomSheet2({
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

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter one time password",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 250,
                  child: Text(
                    OTTextStrings.bottomsheet2_text_2,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const MultiDigitInputView(),
              ],
            ),
            const SizedBox(height: 20,),

             Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Resending OTP");
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Resend",
                          style: TextStyle(
                            color: OTColors.lavender,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.redo_rounded, color: OTColors.lavender,),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.back();
                      Get.bottomSheet(
                        AuthBottomSheet1(isDarkMode: isDarkMode),
                        isScrollControlled: true, // Ensure the bottom sheet covers the entire screen
                      );                    },
                    child: const Row(
                      children: [
                        Text(
                          "Change Phone",
                          style: TextStyle(
                            color: OTColors.lavender,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.redo_rounded, color: OTColors.lavender,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),


            SizedBox(
              width: 200,
              child: OutlineGradientButton(
                onTap: () {
                  Get.back(); // Close the current bottom sheet
                  Get.bottomSheet(
                    AuthBottomSheet3(isDarkMode: isDarkMode),
                    isScrollControlled: true, // Ensure the bottom sheet covers the entire screen
                  );
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
                        "Validate OTP",
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
