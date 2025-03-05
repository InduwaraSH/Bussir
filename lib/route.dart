import 'package:bussir/imageSlider.dart';
import 'package:bussir/searchbar.dart';
import 'package:flutter/material.dart';

class route extends StatefulWidget {
  const route({super.key});

  @override
  State<route> createState() => _homeState();
}

class _homeState extends State<route> {
  int currentImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Searchbar(),
              SizedBox(
                height: 20,
              ),
              imageslider(
                  onImageChanged: (value) {
                    setState(() {
                      currentImage = value;
                    });
                  },
                  currentImage: currentImage)
            ],
          ),
        ),
      ),
    ));
  }
}
