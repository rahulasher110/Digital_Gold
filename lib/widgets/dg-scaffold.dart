import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DigitalGoldScaffoldWidget extends StatelessWidget {
  final Widget body;
  final AppBar appBar;

  const DigitalGoldScaffoldWidget(
      {super.key, required this.body, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
