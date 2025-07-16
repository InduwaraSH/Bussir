import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class alerts extends StatefulWidget {
  const alerts({super.key});

  @override
  State<alerts> createState() => _homeState();
}

class _homeState extends State<alerts> {
  Query dbref_alerts = FirebaseDatabase.instance.ref().child("Alerts");

  Widget listItem({required Map Alerts}) {
    final String alert_title = Alerts['Alert_Title'];
    final String alert_description = Alerts['Alert_Description'];

    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3)), // changes position of shadow
        ],
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Flexible(
                  child: Row(
                children: [
                  Text(
                    Alerts['Alert_Title'],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'sfpro',
                        color: Colors.amber),
                  ),
                ],
              )),
              Flexible(
                  child: Row(
                children: [
                  Text(
                    Alerts['Alert_Description'],
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'sfpro',
                        color: Colors.black),
                  ),
                ],
              ))
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Alerts",
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
              query: dbref_alerts,
              itemBuilder: (BuildContext context, DataSnapshot datasnapshot,
                  Animation<double> animation, int index) {
                Map alerts = datasnapshot.value as Map;
                alerts['key'] = datasnapshot.key;
                return listItem(Alerts: alerts);
              }),
        ));
  }
}
