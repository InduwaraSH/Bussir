import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bus_booking extends StatelessWidget {
  const Bus_booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.amber,
          previousPageTitle: "Home Page",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
