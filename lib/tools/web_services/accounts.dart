import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tech_test/exceptions/unauthorized.dart';
import 'package:tech_test/models/account_full.dart';
import 'package:tech_test/models/account_minimal.dart';
import 'package:tech_test/models/filter.dart';
// ignore: unused_import
import 'package:tech_test/tools/res.dart';
import 'package:tech_test/tools/web_services/auth.dart';
import 'package:tech_test/tools/web_services/base.dart';

import '../../models/accounts_list_response.dart';

class AccountsWebService extends BaseWebService {
  Future<AccountsListResponseModel> getAccounts(
      {String? link, FilterModel? filter}) async {
    try {
      /// Reset retry login status if getAccounts was called after getting access token
      /// one more time.
      if (retryLogin) retryLogin = false;
      if (link != null) dio.options.baseUrl = link;
      dio.options.headers['Prefer'] = 'odata.maxpagesize=20';
      final params = {'\$select': 'name,entityimage_url,accountnumber'};
      if (!(filter?.isNull ?? true)) params.addAll(filter!.toRequest());
      final response = (await (link == null
              ? dio.get('accounts', queryParameters: params)
              : dio.get('')))
          .data;

      /// Parsing json is expensive, running in isolate
      final accounts = List.of(response['value'])
          .map((e) => AccountModelMinimal.fromJson(e))
          .toList();
      //await compute<Map<String, dynamic>, List<AccountModelMinimal>>(_parseAccounts, response);
      final model = AccountsListResponseModel(accounts: accounts);
      if (Map.of(response).containsKey('@odata.nextLink')) {
        model.nextLink = response['@odata.nextLink'];
      }
      return model;
    } on DioError catch (e) {
      if ((e.response?.statusCode ?? 0) == 401 && !retryLogin) {
        /// Trying to get another access token if expired and re-execute the
        /// function. If cannot getting another one, we have an issue with MS.
        /// Maybe the trial period has been expired.
        retryLogin = true;
        await AuthWebService().login();
        return await AccountsWebService().getAccounts();
      } else if ((e.response?.statusCode ?? 0) == 401 && retryLogin) {
        throw UnauthorizedException();
      } else {
        rethrow;
      }
    }
  }

  Future<AccountModelFull> getAccount(String id) async {
    try {
      /// Reset retry login status if getAccounts was called after getting access token
      /// one more time.
      if (retryLogin) retryLogin = false;

      final response = (await dio.get('accounts($id)')).data;

      /// Parsing json is expensive, running in isolate
      return await compute<Map<String, dynamic>, AccountModelFull>(_parseAccount, response);
    } on DioError catch (e) {
      if ((e.response?.statusCode ?? 0) == 401 && !retryLogin) {
        /// Trying to get another access token if expired and re-execute the
        /// function. If cannot getting another one, we have an issue with MS.
        /// Maybe the trial period has been expired.
        retryLogin = true;
        await AuthWebService().login();
        return await AccountsWebService().getAccount(id);
      } else if ((e.response?.statusCode ?? 0) == 401 && retryLogin) {
        throw UnauthorizedException();
      } else {
        rethrow;
      }
    }
  }

  Future<List<String>> getProvinces() async {
    try {
      final response = (await dio.get('accounts', queryParameters: {
        '\$select': 'address1_stateorprovince,address2_stateorprovince'
      }))
          .data;

      /// Reset retry login status if getProvinces was called after getting access token
      /// one more time.
      if (retryLogin) retryLogin = false;

      /// Parsing json is expensive, running in isolate
      return await compute<Map<String, dynamic>, List<String>>(_parseProvinces, response);
    } on DioError catch (e) {
      if ((e.response?.statusCode ?? 0) == 401 && !retryLogin) {
        /// Trying to get another access token if expired and re-execute the
        /// function. If cannot getting another one, we have an issue with MS.
        /// Maybe the trial period has been expired.
        retryLogin = true;
        await AuthWebService().login();
        return await AccountsWebService().getProvinces();
      } else if ((e.response?.statusCode ?? 0) == 401 && retryLogin) {
        throw UnauthorizedException();
      } else {
        rethrow;
      }
    }
  }
}


AccountModelFull _parseAccount(Map<String, dynamic> response) {
  return AccountModelFull.fromJson(response);
}

List<String> _parseProvinces(Map<String, dynamic> response) {
  List<String> provinces = [];

  for (var e in List.of(response['value'])) {
    if (e["address1_stateorprovince"] != null) {
      provinces.add(e["address1_stateorprovince"].toString());
    }

    if (e["address2_stateorprovince"] != null) {
      provinces.add(e["address2_stateorprovince"].toString());
    }
  }
  return provinces.toSet().toList();
}
