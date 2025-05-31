import 'package:bussir/ic_tt_normalnus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Bus_time_table extends StatefulWidget {
  const Bus_time_table({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Bus_time_tableState createState() => _Bus_time_tableState();
}

// ignore: camel_case_types
class _Bus_time_tableState extends State<Bus_time_table> {
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
              header: const Text('Inter city Buses'),
              children: <Widget>[
                GestureDetector(
                  child: CupertinoFormRow(
                    prefix: const PrefixWidget(
                      icon: CupertinoIcons.bus,
                      title: 'Normal Bus',
                      color: CupertinoColors.systemGreen,
                      
                    ),
                    child: const Icon(CupertinoIcons.forward),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IntCity_tt_NorBus()),
                    );
                  },
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
            CupertinoFormSection(
              header: const Text('Inter province Buses'),
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
            CupertinoFormSection(
              header: const Text('Sisu Seriya Buses'),
              children: <Widget>[
                const CupertinoFormRow(
                  prefix: PrefixWidget(
                    icon: CupertinoIcons.bus,
                    title: 'Normal Sisu Seriya Bus',
                    color: CupertinoColors.systemYellow,
                  ),
                  child: Icon(CupertinoIcons.forward),
                ),
              ],
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
