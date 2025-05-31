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
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      height: 110,
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
                    Icon(Icons.location_on, color: Colors.red, size: 25),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Start Location   : ",
                      style: TextStyle(
                          fontFamily: 'sfpro',
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.pinkAccent),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(Student['Start Location'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink,
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
                    Icon(Icons.location_city,
                        color: Colors.lightGreen, size: 25),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "End Location     : ",
                      style: TextStyle(
                          fontFamily: 'sfpro',
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(Student['End Location'],
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen[800],
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
                            color: Colors.blue[800],
                            fontFamily: 'sfpro'),
                        softWrap: true)
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 50,
                height: 110,
                color: Colors.blue,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Normal Bus Time Table"),
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
