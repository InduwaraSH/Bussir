import 'package:bussir/timeTableBusDetail.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntCity_tt_NorBus extends StatefulWidget {
  const IntCity_tt_NorBus({super.key});

  @override
  State<IntCity_tt_NorBus> createState() => _IntCity_tt_NorBusState();
}

class _IntCity_tt_NorBusState extends State<IntCity_tt_NorBus> {
  Query dbref = FirebaseDatabase.instance.ref().child('NormalBusTimeTable_IC');
  DatabaseReference dbref2 =
      FirebaseDatabase.instance.ref().child('NormalBusTimeTable_IC');

  Widget listItem({required Map Student}) {
    final String Driver_name = Student['Driver Name'];
    final String Driver_TP_number = Student['Driver TP Number'];
    final String Bus_number = Student['Bus Number'];

    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          // Container(
          //     padding: const EdgeInsets.all(10),
          //     margin: const EdgeInsets.all(10),
          //     height: 110,
          //     width: 40,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       color: const Color.fromARGB(255, 95, 43, 43),
          //     )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.black, size: 25),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Start Location   : ",
                      style: TextStyle(
                          fontFamily: 'sfpro',
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(Student['Start Location'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'sfpro'),
                        softWrap: true)
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Flexible(
                child: Row(
                  children: [
                    Icon(Icons.location_city, color: Colors.amber, size: 25),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "End Location     : ",
                      style: TextStyle(
                          fontFamily: 'sfpro',
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(Student['End Location'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                            fontFamily: 'sfpro'),
                        softWrap: true),
                    SizedBox(
                      width: 30,
                    ),
                    // Icon(, color: Colors.blue, size: 25),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Flexible(
                child: Row(
                  children: [
                    Icon(Icons.access_time_filled,
                        color: Colors.blue, size: 25),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Start Time          : ",
                      style: TextStyle(
                          fontFamily: 'sfpro',
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(Student['Start Time'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontFamily: 'sfpro'),
                        softWrap: true)
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              right: 0,
              top: 20,
              child: IconButton(
                  onPressed: () {
                    String Driver_Name = Driver_name;
                    String Driver_TP_Number = Driver_TP_number;
                    String Bus_Number = Bus_number;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (Builder) => BusDetailModelpg(driverName: Driver_Name,
                                  driverTPNumber: Driver_TP_Number,busNumber: Bus_Number,)));
                  },
                  icon: Icon(Icons.arrow_circle_right_rounded,
                      color: Colors.black45, size: 50))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Normal Bus Time Table",
            style: TextStyle(
                fontFamily: 'sfpro',
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          height: double.infinity,
          child: FirebaseAnimatedList(
              query: dbref,
              itemBuilder: (BuildContext context, DataSnapshot snapshot,
                  Animation<double> animation, int index) {
                Map student = snapshot.value as Map;
                student['key'] = snapshot.key;
                return listItem(Student: student);
              }),
        ));
  }
}
