import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PoliceTp extends StatelessWidget {
  const PoliceTp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('Police Station Details'),
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
