import 'package:bussir/closedtkt.dart';
import 'package:bussir/ongoingscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// Import OngoingScreen
// Import LosedScreen

class tickets extends StatelessWidget {
  const tickets({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: SegmentedControlExample(),
    );
  }
}

class SegmentedControlExample extends StatefulWidget {
  const SegmentedControlExample({super.key});

  @override
  State<SegmentedControlExample> createState() =>
      _SegmentedControlExampleState();
}

class _SegmentedControlExampleState extends State<SegmentedControlExample> {
  Sky _selectedSegment = Sky.midnight;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSlidingSegmentedControl<Sky>(
          backgroundColor: const Color.fromARGB(255, 187, 187, 190),
          thumbColor: Colors.white,
          groupValue: _selectedSegment,
          onValueChanged: (Sky? value) {
            if (value != null) {
              setState(() {
                _selectedSegment = value;
              });
            }
          },
          children: const <Sky, Widget>{
            Sky.midnight: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Ongoing',
                  style: TextStyle(color: CupertinoColors.black)),
            ),
            Sky.viridian: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Closed',
                  style: TextStyle(color: CupertinoColors.black)),
            ),
          },
        ),
      ),
      child: _getSelectedScreen(),
    );
  }

  Widget _getSelectedScreen() {
    switch (_selectedSegment) {
      case Sky.midnight:
        return const Ongoingscreen();
      case Sky.viridian:
        return const Closedtkt();
      default:
        return const Center(child: Text('Select a segment'));
    }
  }
}

// Define the Sky enum
enum Sky { midnight, viridian }

// Define the skyColors map
final Map<Sky, Color> skyColors = {
  Sky.midnight: Colors.white,
  Sky.viridian: Colors.white,
};
