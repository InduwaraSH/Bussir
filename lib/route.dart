import 'package:flutter/material.dart';

class route extends StatefulWidget {
  const route({super.key});

  @override
  State<route> createState() => _homeState();
}

class _homeState extends State<route> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [Text("Abc2"), Text("ghgh2")],
          ),
        ),
      ),
    );
  }
}
