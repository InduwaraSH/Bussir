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
      color: Colors.amberAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              softWrap: true,
              maxLines: 1,
              Student['Start Location'],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
                //Student['End Location'],
                "ddf",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                softWrap: true),
          ),
          const SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              //"Start " + Student['Start Time'],
              "dfdf",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("h"),
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
