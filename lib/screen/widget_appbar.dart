import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.appTitle,
    required this.action,
  }) : super(key: key);

  final Widget appTitle;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: const Color(0xff0B8E31),
      backgroundColor: Colors.green.shade300,
      title: appTitle,
      automaticallyImplyLeading: false,
      elevation: 3.0,
      actions: [
        action,
      ],
    );
  }
}
