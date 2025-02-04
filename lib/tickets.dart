import 'package:flutter/material.dart';

class tickets extends StatefulWidget {
  const tickets({super.key});

  @override
  State<tickets> createState() => _homeState();
}

class _homeState extends State<tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [Text("Abc"), Text("ghgh")],
          ),
        ),
      ),
    );
  }
}
