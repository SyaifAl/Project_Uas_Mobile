import 'package:try_firebase/screen/widget_appbar.dart';
import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({
    Key? key,
    required this.appTitle,
    required this.bodyTitle,
  }) : super(key: key);

  final String appTitle;
  final String bodyTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 60),
        child: AppBarWidget(
          action: const Text(" "),
          appTitle: Text(appTitle),
        ),
      ),
      body: Center(
        child: Text(
          bodyTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}