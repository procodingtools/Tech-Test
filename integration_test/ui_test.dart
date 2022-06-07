import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:tech_test/models/filter.dart';
import 'package:tech_test/tools/test_pointers.dart';
import 'package:tech_test/tools/web_services/accounts.dart';
import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Test Widget', () {
    testWidgets('Checking if is rendering items', (tester) async {
      await app.main();
      final response = await AccountsWebService().getAccounts();
      await tester.pumpAndSettle();
      final profileItems =
          find.bySemanticsLabel(RegExp(TestPointers.profileItemSemantics));
      expect(profileItems, findsNWidgets(response.accounts.length));
    });

    testWidgets('Checking if list is current view', (tester) async {
      await app.main();
      await tester.pumpAndSettle();
      final listView = find.byKey(TestPointers.listViewKey);
      expect(listView, findsOneWidget);
    });

    testWidgets("switching view type", (tester) async {
      await app.main();
      await tester.pumpAndSettle();
      final toggler =
          find.bySemanticsLabel(RegExp(TestPointers.viewToggleSemantics));
      await tester.tap(toggler);
      await tester.pumpAndSettle();
      final gridView = find.byKey(TestPointers.gridViewKey);
      expect(gridView, findsOneWidget);
    });

    testWidgets('Checking if loading more is visible', (tester) async {
      await app.main();
      await tester.pumpAndSettle();
      final listView = tester
          .widget<SingleChildScrollView>(find.byType(SingleChildScrollView));

      final loadingMore =
          find.bySemanticsLabel(RegExp(TestPointers.loadingMoreSemantics));
      final listController = listView.controller;

      listController!.jumpTo(listController.position.maxScrollExtent);
      await tester.pump();
      expect(loadingMore, findsOneWidget);
    });

    testWidgets('Checking for details view', (tester) async {
      /// Removing failed loading image exception in case of no image
      FlutterError.onError = (err) => err.toString().contains(
              'The following HttpExceptionWithStatus was thrown resolving an image codec:')
          ? null
          : err;
      await app.main();
      await tester.pumpAndSettle();
      final profileItems =
          find.bySemanticsLabel(RegExp(TestPointers.profileItemSemantics));
      await tester.tap(profileItems.first);
      await tester.pumpAndSettle();
      final details = find.bySemanticsLabel(RegExp(TestPointers.detailsSemantics));
      expect(details, findsWidgets);
      FlutterError.onError = (err) => err;
    });

    testWidgets('Testing filter', (tester) async {
      await app.main();
      await tester.pumpAndSettle();

      /// Open filter
      final filterBtn = find.bySemanticsLabel(RegExp(TestPointers.filterButtonSemantics));
      await tester.tap(filterBtn);
      await tester.pumpAndSettle();
      final applyBtn = find.bySemanticsLabel(TestPointers.applyFilterSemantics);
      final clearBtn = find.bySemanticsLabel(TestPointers.clearFilterSemantics);

      /// Selecting TX from dropdown
      final provincesDropdown = find.bySemanticsLabel(RegExp(TestPointers.provincesFilterSemantics));
      await tester.tap(provincesDropdown);
      await tester.pumpAndSettle();
      final provinceItem = find.text('TX').last;
      await tester.tap(provinceItem);
      await tester.pumpAndSettle();
      await tester.pumpAndSettle();
      await tester.tap(applyBtn);
      await tester.pumpAndSettle();

      /// Getting expected filtered result
      final filteredAccounts = await AccountsWebService().getAccounts(filter: FilterModel(province: 'TX'));
      final profileItems =
      find.bySemanticsLabel(RegExp(TestPointers.profileItemSemantics));
      expect(profileItems, findsNWidgets(filteredAccounts.accounts.length));

      /// Clearing filter
      await tester.tap(filterBtn);
      await tester.pumpAndSettle();
      await tester.tap(clearBtn);
      await tester.pumpAndSettle();

      /// Getting expected result
      final allAccounts = await AccountsWebService().getAccounts();
      expect(profileItems, findsNWidgets(allAccounts.accounts.length));
    });

    testWidgets('checking no data', (tester) async {
      await app.main();
      await tester.pumpAndSettle();

      final textField = find.byKey(TestPointers.searchTextFieldKey);
      await tester.enterText(textField, 'nothing to show, just the "No data" placeholder');
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle();
      final noData = find.bySemanticsLabel(RegExp(TestPointers.noDataSemantics));
      expect(noData, findsOneWidget);
    });
  });
}
