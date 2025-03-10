import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bus_time_table extends StatefulWidget {
  const Bus_time_table({super.key});

  @override
  _Bus_time_tableState createState() => _Bus_time_tableState();
}

class _Bus_time_tableState extends State<Bus_time_table> {
  bool airplaneMode = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
          middle: Text('CupertinoFormSection Sample')),
      // Add safe area widget to place the CupertinoFormSection below the navigation bar.
      child: SafeArea(
        child: CupertinoFormSection(
          header: const Text('Connectivity'),
          children: <Widget>[
            const CupertinoFormRow(
              prefix: PrefixWidget(
                icon: CupertinoIcons.bus,
                title: 'Normal Bus',
                color: CupertinoColors.systemGreen,
              ),
              child: Icon(CupertinoIcons.forward),
            ),
            const CupertinoFormRow(
              prefix: PrefixWidget(
                icon: CupertinoIcons.bus,
                title: 'Highway Bus',
                color: CupertinoColors.systemRed,
              ),
              child: Icon(CupertinoIcons.forward),
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
