import 'package:flutter/material.dart';

// showSearch(context: context, delegate: SearchBarWidget());

class SearchBarWidget extends SearchDelegate {
  List<String> allData = [
    'American',
    'Russia',
    'China',
    'Germany',
    'Italy',
    'France',
    'England',
    'Vietnamese',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      GestureDetector(
        onTap: () {
          query = '';
        },
        child: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return GestureDetector(
      onTap: () {
        close(context, null);
      },
      child: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> resultQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        resultQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: resultQuery.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(resultQuery[index]));
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> resultQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        resultQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: resultQuery.length,
      itemBuilder: (context, index) {
        return ListTile(title: Text(resultQuery[index]));
      },
    );
  }
}
