import 'package:flutter_test/flutter_test.dart';
import 'package:tech_test/exceptions/unauthorized.dart';
import 'package:tech_test/models/filter.dart';
import 'package:tech_test/tools/web_services/accounts.dart';

void main() {
  group('Testing accounts', () {
    test('check if unauthorized exception is not thrown', () async {
      expect(await AccountsWebService().getAccounts() == null, isNot(throwsA(UnauthorizedException())));
    });

    test('check if accounts is not empty', () async {
      expect((await AccountsWebService().getAccounts()).accounts.isNotEmpty, true);
    });

    test('check if accounts not containing null value', () async {
      final response = await AccountsWebService().getAccounts();
      expect(response.accounts.contains(null) || response.accounts.contains('null'), false);
    });

    test('getting filtered result', () async {
      const accountNumber = 'EQF65423EQ1';
      final response = await AccountsWebService().getAccounts(filter: FilterModel(keyword: accountNumber));
      expect(response.accounts.where((element) => element.accountnumber != accountNumber).length, 0);
    });
  });
}