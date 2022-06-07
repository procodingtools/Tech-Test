import 'package:flutter/material.dart';
import 'package:tech_test/models/filter.dart';

class FilterProvider extends ChangeNotifier {
  FilterModel filter = FilterModel();

  void setKeyword(String? keyword) {
    filter.keyword = keyword;
    notifyListeners();
  }

  void setProvince(String? province) {
    filter.province = province;
    notifyListeners();
  }

  void setStateCode(String? state) {
    filter.state = state;
    notifyListeners();
  }
}