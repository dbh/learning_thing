import 'dart:ffi';

import 'package:flutter/material.dart';

class DictionaryList extends StatefulWidget {
  final Map<String, String> dictionaryMap = {
    'אדרבא': 'it is the opposite',
    'או דלמא': 'or maybe',
    'אזיל': 'go/continue',
    'אפירכא': 'on the question'
  };

  @override
  _DictionaryListState createState() => _DictionaryListState();
}

class _DictionaryListState extends State<DictionaryList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.dictionaryMap.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(widget.dictionaryMap.keys.elementAt(index)),
          subtitle: Text(widget.dictionaryMap.values.elementAt(index)),
        );
      },
    );
  }
}
