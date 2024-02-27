import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buldAppBar(),
    );
  }

  _buldAppBar() {
    return AppBar(
      title: const Text(
        "Daily news",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
