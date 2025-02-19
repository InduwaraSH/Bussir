import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: skyColors[_selectedSegment],
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoSlidingSegmentedControl<Sky>(
          backgroundColor: const Color.fromARGB(255, 187, 187, 190),
          thumbColor: skyColors[_selectedSegment]!,
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
              child: Text('Midnight',
                  style: TextStyle(color: CupertinoColors.black)),
            ),
            Sky.viridian: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Viridian',
                  style: TextStyle(color: CupertinoColors.black)),
            ),
            Sky.cerulean: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Cerulean',
                  style: TextStyle(color: CupertinoColors.black)),
            ),
          },
        ),
      ),
      child: Center(
        child: Text(
          'Selected Segment: ${_selectedSegment.name}',
          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ),
    );
  }
}

// Define the Sky enum
enum Sky { midnight, viridian, cerulean }

// Define the skyColors map
final Map<Sky, Color> skyColors = {
  Sky.midnight: Colors.white,
  Sky.viridian: const Color.fromARGB(255, 255, 255, 255),
  Sky.cerulean: const Color.fromARGB(255, 255, 255, 255),
};
