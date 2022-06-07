import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_test/tools/providers/filter.dart';
import 'package:tech_test/tools/res.dart';
import 'package:tech_test/tools/web_services/accounts.dart';
import 'package:tech_test/tools/web_services/auth.dart';
import 'package:tech_test/ui/common/account_image.dart';
import 'package:tech_test/ui/common/filter_content.dart';
import 'package:tech_test/ui/common/list_preloader.dart';
import 'package:tech_test/ui/common/text_paire.dart';
import 'package:tech_test/ui/details/details_screen.dart';

import '../../models/account_minimal.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isListView = true;
  String? _nextLink;
  bool _isLoading = true;
  final List<AccountModelMinimal> _accounts = [];
  final List<String> _provinces = [];
  final _searchController = TextEditingController();
  bool _isLoadingNext = false;

  @override
  void initState() {
    super.initState();
    _loginAndGetData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: _isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    _searchBar(),
                    Expanded(
                      child: NotificationListener<ScrollNotification>(
                        onNotification: (notif) {
                          if (!_isLoadingNext &&
                              _nextLink != null &&
                              notif.metrics.pixels >
                                  notif.metrics.maxScrollExtent - 50.0) {
                            setState(() {
                              _isLoadingNext = true;
                            });
                            _getAccounts();
                          }
                          return false;
                        },
                        child: _accounts.isEmpty
                            ? Center(
                                child: Semantics(
                                  label: Res.noDataSemantics,
                                    child: const Text('No accounts')
                                ),
                              )
                            : SingleChildScrollView(
                          controller: ScrollController(),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Column(
                                  children: [
                                    _isListView ? _listView() : _gridView(),

                                    /// Display the loading more preloader If
                                    /// the graph returns next page link
                                    if (_isLoadingNext)
                                      const ListPreloader(),
                                  ],
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ));
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text('Accounts'),
      actions: [
        Semantics(
          label: Res.filterButtonSemantics,
          child: InkWell(
            onTap: () {
              /// Using popupmenu will cause dropdown value change issue because
              /// its state is not accessible. Using overlays will show the
              /// DropdownMenu behind it. Using dialog as solution for that.
              showDialog(
                  barrierColor: Colors.transparent,
                  context: context,
                  builder: (context) => SimpleDialog(
                        alignment: const Alignment(1.0, -1.0),
                        children: [
                          FilterContent(
                              onChanged: () {
                                Navigator.pop(context);
                                setState(() {
                                  _isLoading = true;
                                  _nextLink = null;
                                  _accounts.clear();
                                });
                                _getAccounts();
                              },
                              states: const ['0', '1'],
                              provinces: _provinces)
                        ],
                      ));
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.filter_alt_sharp,
                semanticLabel: 'filter_tap',
              ),
            ),
          ),
        ),

        /// Toggle view switch
        Semantics(
          label: Res.viewToggleSemantics,
          child: TextButton(
            onPressed: () {
              setState(() {
                _isListView = !_isListView;
              });
            },
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.view_list_rounded,
                    color: _isListView ? Colors.white : Colors.grey,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.grid_view_rounded,
                    color: !_isListView ? Colors.white : Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _gridView() {
    return GridView.builder(
      key: Res.gridViewKey,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 2 / 2.5,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 8.0,
            crossAxisCount: 2),
        shrinkWrap: true,
        itemCount: _accounts.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => _accountGridItem(_accounts[index]));
  }

  /// Widget used in gridview
  Widget _accountGridItem(AccountModelMinimal account) {
    return Semantics(
      label: Res.profileItemSemantics,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: InkWell(
            onTap: () => _gotoDetails(account),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                          child: AccountImage(account.entityimage_url ?? '')),
                      Positioned(
                        bottom: .0,
                        left: .0,
                        right: .0,
                        child: Container(
                          color: Colors.white12,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              account.name ?? 'No name',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.grey[350],
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextPaire(title: 'Acc N°', value: account.accountnumber),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Flexible(
                            child: TextPaire(
                                title: 'Acc ID', value: account.accountid)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _listView() {
    return ListView.builder(
      key: Res.listViewKey,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => _accountListItem(index),
      itemCount: _accounts.length,
    );
  }

  /// Widget used in listview
  Widget _accountListItem(int index) {
    final account = _accounts[index];
    return Semantics(
      label: Res.profileItemSemantics,
      child: InkWell(
        onTap: () => _gotoDetails(account),
        child: Container(
          decoration: BoxDecoration(
            color: index.isOdd ? Colors.white : Colors.grey[200],
          ),
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(bottom: 5.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AccountImage(account.entityimage_url ?? ''),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      account.name ?? 'No name',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.grey[350],
                      width: double.infinity,
                      height: 90.0,
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextPaire(title: 'Acc N°', value: account.accountnumber),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Flexible(
                              child: TextPaire(title: 'Acc ID', value: account.accountid)),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _searchBar() {
    return TextFormField(
      key: Res.searchTextFieldKey,
      controller: _searchController,
      enabled: !_isLoading,
      onFieldSubmitted: (txt) {
        if (txt.isEmpty &&
            Provider.of<FilterProvider>(context, listen: false)
                    .filter
                    .keyword ==
                null) {
          return;
        }
        setState(() {
          Provider.of<FilterProvider>(context, listen: false)
              .setKeyword(txt.isEmpty ? null : txt);
          _isLoading = true;
          _nextLink = null;
          _accounts.clear();
        });
        _getAccounts();
      },
      decoration: InputDecoration(
          hintText: 'Find by name or account number',
          prefixIcon: const Icon(Icons.search),
          suffixIcon: _searchController.text.isEmpty
              ? null
              : InkWell(
                  onTap: () {
                    setState(() {
                      _searchController.text = '';
                      Provider.of<FilterProvider>(context, listen: false)
                          .setKeyword(null);
                      _nextLink = null;
                      _isLoading = true;
                      _accounts.clear();
                    });
                    _getAccounts();
                  },
                  child: const Icon(Icons.close),
                )),
    );
  }

  Future<void> _loginAndGetData() async {
    try {
      await AuthWebService().login();
      Future.wait([
        _getProvinces(),
        _getAccounts(),
      ]);
    } catch (e) {
      _showErrorDialog(
          error: (e is DioError && (e.response?.statusCode ?? 0) == 401)
              ? "Maybe the trial period has been expired.Please contact me.\n\nThanks"
              : null);
      _nextLink = null;
    }
  }

  Future<void> _getProvinces() async {
    final provinces = await AccountsWebService().getProvinces();
    setState(() {
      _provinces.addAll(provinces);
    });
  }

  Future<void> _getAccounts() async {
    try {
      final response = await AccountsWebService().getAccounts(
          link: _nextLink,
          filter: Provider.of<FilterProvider>(context, listen: false).filter);
      setState(() {
        _accounts.addAll(response.accounts);
        _nextLink = response.nextLink;
        _isLoadingNext = false;
      });
    } catch (e) {
      _showErrorDialog(
          error: (e is DioError && (e.response?.statusCode ?? 0) == 401)
              ? "Maybe the trial period has been expired.Please contact me.\n\nThanks"
              : null);
      _nextLink = null;
    } finally {
        setState(() {
          _isLoading = false;
        });
    }
  }

  _showErrorDialog({String? error}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (mounted) {
        showDialog(
            context: context,
            builder: (context) =>
                Semantics(
                  label: 'error_dialog',
                  child: AlertDialog(
                    title: const Text('Error'),
                    content: Text(error ?? 'Unexpected error'),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            'Ok',
                            style: TextStyle(color: Colors.teal),
                          ))
                    ],
                  ),
                ));
      }
    });
  }

  _gotoDetails(AccountModelMinimal account) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DetailsScreen(account: account)));
  }
}
