import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_test/tools/providers/filter.dart';
import 'package:tech_test/tools/res.dart';

class FilterContent extends StatefulWidget {
  const FilterContent(
      {Key? key,
      required this.onChanged,
      required this.states,
      required this.provinces})
      : super(key: key);

  final VoidCallback onChanged;
  final List<String> states;
  final List<String> provinces;

  @override
  createState() => _FilterContentState();
}

class _FilterContentState extends State<FilterContent>
    with TickerProviderStateMixin {
  String? _selectedState;
  String? _selectedProvince;

  @override
  void initState() {
    _selectedState =
        Provider.of<FilterProvider>(context, listen: false).filter.state;
    _selectedProvince =
        Provider.of<FilterProvider>(context, listen: false).filter.province;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        width: 250.0,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          _dropdown(
              text: 'Filter by state code',
              items: widget.states,
              value: _selectedState,
              onChanged: (val) {
                setState(() {
                  _selectedState = val;
                });
              }),
          Semantics(
            label: Res.provincesFilterSemantics,
          child: _dropdown(
              text: 'Filter by state or province',
              items: widget.provinces,
              value: _selectedProvince,
              onChanged: (val) {
                setState(() {
                  _selectedProvince = val;
                });
              })
      ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Semantics(
                    label: Res.clearFilterSemantics,
                    child: MaterialButton(
                      onPressed: () {
                        if (_selectedProvince != null ||
                            _selectedState != null) {
                          final filterProvider = Provider.of<FilterProvider>(
                              context,
                              listen: false);
                          setState(() {
                            _selectedProvince = null;
                            _selectedState = null;
                            filterProvider
                              ..setProvince(null)
                              ..setStateCode(null);
                          });
                          widget.onChanged();
                        } else {
                          Navigator.pop(context);
                        }
                      },
                      color: Colors.red,
                      textColor: Colors.white,
                      child: const Text('Clear'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Semantics(
                    label: Res.applyFilterSemantics,
                    child: MaterialButton(
                      onPressed: () {
                        final filterProvider = Provider.of<FilterProvider>(
                            context,
                            listen: false);
                        if (filterProvider.filter.state != _selectedState ||
                            filterProvider.filter.province !=
                                _selectedProvince) {
                          setState(() {
                            filterProvider
                              ..setProvince(_selectedProvince)
                              ..setStateCode(_selectedState);
                          });
                          widget.onChanged();
                        } else {
                          Navigator.pop(context);
                        }
                      },
                      color: Colors.green,
                      textColor: Colors.white,
                      child: const Text('Filter'),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }



  _dropdown(
      {required String text,
      String? value,
      required List<String> items,
      required Function(String) onChanged}) {
    return DropdownButton(
        isExpanded: true,
        hint: Text(text, style: const TextStyle(color: Colors.grey)),
        value: value,
        items: items
            .map((e) => DropdownMenuItem<String>(
                  value: e.toString(),
                  child: Text(
                    e.toString(),
                  ),
                ))
            .toList(),
        onChanged: (val) => onChanged(val.toString()));
  }
}
