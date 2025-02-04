import 'package:flutter/material.dart';

class alerts extends StatefulWidget {
  const alerts({super.key});

  @override
  State<alerts> createState() => _homeState();
}

class _homeState extends State<alerts> {
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
