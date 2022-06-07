import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tech_test/models/account_full.dart';
import 'package:tech_test/models/account_minimal.dart';
import 'package:tech_test/tools/web_services/accounts.dart';
import 'package:tech_test/ui/common/account_image.dart';
import 'package:tech_test/ui/common/text_paire.dart';

import '../../tools/test_pointers.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.account}) : super(key: key);

  final AccountModelMinimal account;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late AccountModelFull _account;
  late Map<String, dynamic> _accountJson;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    _getAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.account.name ?? 'Details'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 1.0)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(999),
                      child: AccountImage(widget.account.entityimage_url ?? '')),
                ),
              ),
              if (_isLoading)
                Padding(
                  padding: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height / 2) - 130),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: const [
                      CircularProgressIndicator(),
                    ],
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _accountJson.keys.length,
                    itemBuilder: (context, index) {
                      final title = _accountJson.keys.elementAt(index);
                      return Semantics(
                        label: TestPointers.detailsSemantics,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                          color: index.isOdd ? Colors.grey[200] : Colors.white,
                          child: TextPaire(
                            title: title.replaceAll('_', ' '),
                            value: _accountJson[title]?.toString(),
                            textScale: 1.3,
                          ),
                        ),
                      );
                    },
                  ),
                )
            ],
          ),
        ));
  }

  Future<void> _getAccount() async {

    try {
      _account =
      await AccountsWebService().getAccount(widget.account.accountid);
      setState(() {
        _accountJson = _account.toJson();
        _isLoading = false;
      });
    } catch (e) {
      _showErrorDialog(
          error: (e is DioError && (e.response?.statusCode ?? 0) == 401)
              ? "Maybe the trial period has been expired.Please contact me.\n\nThanks"
              : null);
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
}
