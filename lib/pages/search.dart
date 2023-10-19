import 'package:flutter/material.dart';

import '../theme.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: ThemePallete.mainColor,
      ),
      body: Center(
        child: Text('Search'),
      ),
    );
  }

}