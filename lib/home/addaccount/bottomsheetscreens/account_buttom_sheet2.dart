import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:outtapptest/home/addaccount/controller/account_controller.dart';
import 'package:outtapptest/home/addaccount/model/accountlist.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../constants/colors.dart';

class AccountBottomSheet2 extends StatefulWidget {
  const AccountBottomSheet2({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  State<AccountBottomSheet2> createState() => _AccountBottomSheet2State();
}

class _AccountBottomSheet2State extends State<AccountBottomSheet2> {
  @override
  Widget build(BuildContext context) {
    final accountController = Get.put(AccountController());
    AccountList? selectedAccount;

    return Container(
      decoration: BoxDecoration(
        color: widget.isDarkMode ? OTColors.primaryColorB : OTColors.primaryColorW,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40), // Adjust the radius as needed
          topRight: Radius.circular(40), // Adjust the radius as needed
        ),
      ),
      height: 900,
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
                FutureBuilder(
                    future: accountController.getBankList(),
                    builder: (context, snapshot) {
                      if(snapshot.hasError){
                        return const Text("Data Not Found");
                      }else if (snapshot.hasData){
                        List<AccountList> accountList = snapshot.data!;
                        return DropdownMenu<AccountList>(
                          width: 350,
                          initialSelection: selectedAccount, // Set the initial selection
                          label: const Text('Select a bank'),
                          dropdownMenuEntries: accountList.map((AccountList account) {
                            return DropdownMenuEntry(
                              value: account,
                              label: account.name,
                            );
                          }).toList(),
                          onSelected: (AccountList? newValue) async {
                            setState(() {
                              selectedAccount = newValue;
                            });

                            if (newValue != null) {
                              SharedPreferences prefs = await SharedPreferences.getInstance();
                              await prefs.setInt('bankID', newValue.id);
                            }
                          },
                        );
                      } else {
                        return const Center(child: SpinKitWave(
                          color: OTColors.primaryColorG,
                          size: 50.0,
                        ),);
                      }
                    }
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: accountController.accountNumber,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Account Number",
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 30,
            ),


            SizedBox(
              width: 200,
              child: OutlineGradientButton(
                onTap: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  int? bankID = prefs.getInt('bankID');
                  print('Bank ID: $bankID');
                  accountController.getVerifiedAccount(bankID.toString());
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
                        "Verify Account",
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