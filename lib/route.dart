import 'package:bussir/bus_booking.dart';
import 'package:bussir/bus_time_table.dart';
import 'package:bussir/emergency.dart';
import 'package:bussir/feedback.dart';

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
                height: 20,
              ),
              Searchbar(),
              SizedBox(
                height: 30,
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
                      color: Colors.grey[200],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Bus_time_table()),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/bustimetable.png",
                            height: 75,
                            width: 150,
                          ),
                          SizedBox(
                            height: 10,
                            width: 150,
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
                  SizedBox(width: 20),
                  CupertinoButton(
                      color: Colors.grey[200],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BusBooking()),
                        );
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/seatbooking.png"),
                            height: 75,
                            width: 150,
                          ),
                          SizedBox(
                            height: 10,
                            width: 120,
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
                height: 20,
              ),
              Row(
                children: [
                  CupertinoButton(
                      color: Colors.grey[200],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Feedbackpage()),
                        );
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/feedback.png"),
                            height: 75,
                            width: 150,
                          ),
                          SizedBox(
                            height: 10,
                            width: 120,
                          ),
                          Text(
                            "Feedback",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'sfpro',
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      )),
                  SizedBox(width: 20),
                  CupertinoButton(
                      color: Colors.grey[200],
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => emergency()),
                        );
                      },
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage("images/emergency.png"),
                            height: 75,
                            width: 150,
                          ),
                          SizedBox(
                            height: 10,
                            width: 120,
                          ),
                          Text(
                            "Emergency",
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
            ],
          ),
        ),
      ),
    ));
  }
}
