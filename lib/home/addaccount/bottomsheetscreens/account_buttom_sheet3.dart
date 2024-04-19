import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:outtapptest/home/addaccount/bottomsheetscreens/account_buttom_sheet4.dart';
import 'package:outtapptest/home/addaccount/model/accountdata.dart';
import '../../../constants/colors.dart';

class AccountBottomSheet3 extends StatelessWidget {
  const AccountBottomSheet3({
    super.key,
    required this.accountData,
  });

  final AccountData accountData;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: isDarkMode ? OTColors.primaryColorW : OTColors.primaryColorB), // Adjust border color as needed
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                    child: Center(
                      child: Text(
                        accountData.bankId.toString(), // Display the bankId from the AccountData model
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: isDarkMode ? OTColors.primaryColorW : OTColors.primaryColorB), // Adjust border color as needed
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100,20,100,20),
                    child: Center(
                      child: Text(
                        accountData.accountNumber, // Display the accountNumber from the AccountData model
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  accountData.accountName, // Display the accountName from the AccountData model
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),


            SizedBox(
              width: 200,
              child: OutlineGradientButton(
                onTap: () {
                  Get.back(); // Close the current bottom sheet
                  Get.bottomSheet(AccountBottomSheet4(isDarkMode: isDarkMode));
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
                        "Add Account",
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