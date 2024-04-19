import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../../constants/colors.dart';
import 'auth_bottom_sheet2.dart';

class AuthBottomSheet1 extends StatelessWidget {
  const AuthBottomSheet1({
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
      height: 400,
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
            const SizedBox(height: 30,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter your phone number",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "+234",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),

            Text(
              "An OTP will be sent to your phone number",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 30,
            ),


            SizedBox(
              width: 200,
              child: OutlineGradientButton(
                onTap: () {
                  Get.back(); // Close the current bottom sheet
                  Get.bottomSheet(
                    AuthBottomSheet2(isDarkMode: isDarkMode),
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
                        "Verify Phone",
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
