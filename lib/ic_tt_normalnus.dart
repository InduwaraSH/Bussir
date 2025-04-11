import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class IntCity_tt_NorBus extends StatelessWidget {
  const IntCity_tt_NorBus({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Inter City Normal Bus'),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [Text("fff")],
        ),
      ),
    );
  }
}
