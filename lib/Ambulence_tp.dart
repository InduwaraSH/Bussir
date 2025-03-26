import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmbulenceTp extends StatelessWidget {
  const AmbulenceTp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('Ambulence Details'),
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
