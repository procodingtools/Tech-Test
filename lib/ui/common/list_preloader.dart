import 'package:flutter/material.dart';

import '../../tools/test_pointers.dart';

class ListPreloader extends StatelessWidget {
  const ListPreloader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: TestPointers.loadingMoreSemantics,
      child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
      CircularProgressIndicator(),
      SizedBox(
      width: 8.0,
      ),
      Text('Getting more data...')
      ],
      )),
    );
  }
}
