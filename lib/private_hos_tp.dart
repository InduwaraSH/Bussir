import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrivateHosTp extends StatelessWidget {
  const PrivateHosTp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('Private Hospital Details'),
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
