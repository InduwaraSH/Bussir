import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gov_hos_tp extends StatelessWidget {
  const gov_hos_tp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('Government Hospital'),
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
