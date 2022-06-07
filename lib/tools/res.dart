import 'package:flutter/material.dart';

class Res {
    static const String host = 'https://org3a7e1e01.api.crm4.dynamics.com/api/data/v9.2/';
    static const String authHost = 'https://login.microsoftonline.com/6fa5f3cf-f9bf-4b21-8bf1-483d3808d8e6/oauth2/token';
    static String? token;
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