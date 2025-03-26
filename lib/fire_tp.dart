import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FireTp extends StatelessWidget {
  const FireTp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('Fire Station TP'),
        leading: CupertinoNavigationBarBackButton(
          color: Colors.amber,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
