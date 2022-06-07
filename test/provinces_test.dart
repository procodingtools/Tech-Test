import 'package:flutter_test/flutter_test.dart';
import 'package:tech_test/exceptions/unauthorized.dart';
import 'package:tech_test/tools/web_services/accounts.dart';

void main() {
  group('Provinces', () {
    test('check if unauthorized exception is not thrown', () async {
      expect(await AccountsWebService().getProvinces() == null, isNot(throwsA(UnauthorizedException())));
    });

    test('test if provinces is not null', () async {
      expect(await AccountsWebService().getProvinces() == null, false);
    });

    test('check if provinces is not empty', () async {
      expect((await AccountsWebService().getProvinces()).isNotEmpty, true);
    });

    test('check if provinces not containing null value', () async {
      final response = await AccountsWebService().getProvinces();
      expect(response.contains(null) || response.contains('null'), false);
    });
  });
}