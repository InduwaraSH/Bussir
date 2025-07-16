import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/cupertino.dart';
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
    final String alert_type = Alerts['Alert_Type'];

    Color colour_picked = Colors.pinkAccent;

    if (Alerts['Alert_Type'].toString().toUpperCase() == "WARNING") {
      colour_picked = Colors.pinkAccent;
    } else if (Alerts['Alert_Type'].toString().toUpperCase() == "RAINY") {
      colour_picked = Colors.blueAccent;
    } else {
      colour_picked = Colors.green;
    }

    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300]!,
              spreadRadius: 2,
              blurRadius: 7,
              offset: const Offset(0, 3)), // changes position of shadow
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.notifications,
                color: colour_picked,
                size: 25,
              ),
              SizedBox(width: 2),
              Text(
                Alerts['Alert_Title'],
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sfpro',
                    color: colour_picked),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            Alerts['Alert_Description'],
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'sfpro',
                color: const Color.fromARGB(255, 107, 107, 107)),
            softWrap: true,
            overflow: TextOverflow.visible, // or ellipsis if you want cut-off
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text(
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
              reverse: true,
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
