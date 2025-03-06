import 'package:bussir/imageSlider.dart';
import 'package:bussir/searchbar.dart';
import 'package:flutter/cupertino.dart';
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
                  currentImage: currentImage),
              const SizedBox(height: 30),
              Row(
                children: [
                  CupertinoButton(
                      color: Colors.black,
                      onPressed: () {},
                      child: Column(
                        children: [
                          Image.asset(
                            "images/bustimetable.png",
                            height: 70,
                            width: 120,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Bus Time table",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'sfpro',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      )),
                  SizedBox(width: 40),
                  CupertinoButton(
                      color: Colors.black,
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.shield_rounded,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Bus Booking",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'sfpro',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  CupertinoButton(
                      color: Colors.black,
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 30,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Bus Time table",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'sfpro',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      )),
                  SizedBox(width: 40),
                  CupertinoButton(
                      color: Colors.black,
                      onPressed: () {},
                      child: Column(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 30,
                            color: Colors.white54,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Bus Time table",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sfpro',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
