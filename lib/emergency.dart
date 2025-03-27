import 'package:bussir/Ambulence_tp.dart';
import 'package:bussir/fire_tp.dart';
import 'package:bussir/gov_hos_tp.dart';
import 'package:bussir/feedback.dart';
import 'package:bussir/police_tp.dart';
import 'package:bussir/private_hos_tp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class emergency extends StatefulWidget {
  const emergency({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Bus_time_tableState createState() => _Bus_time_tableState();
}

// ignore: camel_case_types
class _Bus_time_tableState extends State<emergency> {
  bool airplaneMode = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          const CupertinoNavigationBar(middle: Text('Bus Time Table')),
      // Add safe area widget to place the CupertinoFormSection below the navigation bar.
      child: SafeArea(
        child: Column(
          children: [
            CupertinoFormSection(
              header: const Text('Health Care Services'),
              
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Handle onPressed event
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const gov_hos_tp()),
                    );
                  },
                  child: const CupertinoFormRow(
                    prefix: PrefixWidget(
                      icon: CupertinoIcons.plus_square_fill,
                      title: 'Government Hospital',
                      color: CupertinoColors.systemGreen,
                    ),
                    child: Icon(CupertinoIcons.forward),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle onPressed event
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PrivateHosTp()),
                    );
                  },
                  child: const CupertinoFormRow(
                    prefix: PrefixWidget(
                      icon: CupertinoIcons.plus_square_fill,
                      title: 'Private Hospital',
                      color: CupertinoColors.systemCyan,
                    ),
                    child: Icon(CupertinoIcons.forward),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle onPressed event
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AmbulenceTp()),
                    );
                  },
                  child: CupertinoFormRow(
                    prefix: const PrefixWidget(
                      icon: CupertinoIcons.car_fill,
                      title: 'Ambulance Service',
                      color: CupertinoColors.systemRed,
                    ),
                    child: const Icon(CupertinoIcons.forward),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // Handle onPressed event
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PoliceTp()),
                );
              },
              child: CupertinoFormSection(
                header: const Text('Other Emergency Services'),
                children: <Widget>[
                  const CupertinoFormRow(
                    prefix: PrefixWidget(
                      icon: CupertinoIcons.shield_lefthalf_fill,
                      title: 'Police Station',
                      color: CupertinoColors.black,
                    ),
                    child: Icon(CupertinoIcons.forward),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle onPressed event
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const FireTp()),
                      );
                    },
                    child: const CupertinoFormRow(
                      prefix: PrefixWidget(
                        icon: Icons.fire_truck,
                        title: 'Fire Service',
                        color: CupertinoColors.activeOrange,
                      ),
                      child: Icon(CupertinoIcons.forward),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PrefixWidget extends StatelessWidget {
  const PrefixWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.color});

  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(4.0)),
          child: Icon(icon, color: CupertinoColors.white),
        ),
        const SizedBox(width: 15),
        Text(title),
      ],
    );
  }
}
