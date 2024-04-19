class AccountData {
  final String accountNumber;
  final String accountName;
  final int bankId;

  AccountData({
    required this.accountNumber,
    required this.accountName,
    required this.bankId,
  });

  factory AccountData.fromJson(Map<String, dynamic> json) {
    return AccountData(
      accountNumber: json['account_number'] ?? '',
      accountName: json['account_name'] ?? '',
      bankId: json['bank_id'] ?? 0,
    );
  }
}
