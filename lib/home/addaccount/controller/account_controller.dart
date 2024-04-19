import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:outtapptest/constants/api_endpoints.dart';
import 'package:http/http.dart' as http;
import 'package:outtapptest/home/addaccount/bottomsheetscreens/account_buttom_sheet3.dart';
import 'package:outtapptest/home/addaccount/model/accountdata.dart';
import 'package:outtapptest/home/addaccount/model/accountlist.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountController extends GetxController {
  static AccountController get instance => Get.find();
  TextEditingController accountNumber = TextEditingController();


  Future<List<AccountList>> getBankList() async {
    final response = await http
        .get(Uri.parse("https://api.paystack.co/bank?country=nigeria"));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['data'] as List;
      return decodedData.map((result) => AccountList.fromJson(result)).toList();
    } else {
      throw Exception('Failed to retrieve');
    }
  }

  Future<List<AccountData>> getVerifiedAccount(String bankID) async {
    final response = await http.post(
      Uri.parse("https://verifyaccountnumber-7l2bkb353q-uc.a.run.app"),
      body: json.encode(
        {"account_number": accountNumber.text, "bank_code": bankID},
      )
    );
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['data'] as List;
      return decodedData.map((result) => AccountData.fromJson(result)).toList();
    }else if (response.statusCode == 400){
      throw Exception('Failed to retrieve');
    } else{
      throw Exception('Failed to retrieve');
    }
  }
}
