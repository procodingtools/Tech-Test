import 'package:tech_test/models/account_minimal.dart';

class AccountsListResponseModel {
  final List<AccountModelMinimal> accounts;
  String? nextLink;

  AccountsListResponseModel({required this.accounts, this.nextLink});
}