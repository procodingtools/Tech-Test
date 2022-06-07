import 'package:flutter/material.dart';

class TestPointers {
  static const String profileItemSemantics = 'profile_item';
  static const String noDataSemantics = 'no_data';
  static final listViewKey = GlobalKey(debugLabel: 'list_view');
  static final gridViewKey = GlobalKey(debugLabel: 'grid_view');
  static const String viewToggleSemantics = 'view_toggler';
  static const String loadingMoreSemantics = 'loading_more';
  static const String detailsSemantics = 'details_view';
  static const String filterButtonSemantics = 'filter_button';
  static const String applyFilterSemantics = 'apply_filter_button';
  static const String clearFilterSemantics = 'clear_filter_button';
  static const String provincesFilterSemantics = 'provinces_filter_button';
  static const Key searchTextFieldKey = Key('search_box');
}