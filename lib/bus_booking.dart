import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bus_booking extends StatefulWidget {
  const Bus_booking({Key? key}) : super(key: key);

  @override
  _Bus_bookingState createState() => _Bus_bookingState();
}

class _Bus_bookingState extends State<Bus_booking> {
  int _selectedFruit = 0;
  static const double _kItemExtent = 32.0;
  static const List<String> _fruitNames = <String>[
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Fig',
    'Grape',
    'Lemon'
  ];

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.amber,
          previousPageTitle: "Home Page",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CupertinoPageScaffold(
        child: DefaultTextStyle(
          style: TextStyle(
              color: CupertinoColors.label.resolveFrom(context),
              fontSize: 22.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text('Staring Stand: '),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    // Display a CupertinoPicker with list of fruits.
                    onPressed: () => _showDialog(
                      CupertinoPicker(
                        magnification: 1.22,
                        squeeze: 1.2,
                        useMagnifier: true,
                        itemExtent: _kItemExtent,
                        // This sets the initial item.
                        scrollController: FixedExtentScrollController(
                            initialItem: _selectedFruit),
                        // This is called when selected item is changed.
                        onSelectedItemChanged: (int selectedItem) {
                          setState(() {
                            _selectedFruit = selectedItem;
                          });
                        },
                        children: List<Widget>.generate(_fruitNames.length,
                            (int index) {
                          return Center(child: Text(_fruitNames[index]));
                        }),
                      ),
                    ),
                    // This displays the selected fruit name.
                    child: Container(
                      child: Text(_fruitNames[_selectedFruit],
                          style: const TextStyle(
                              fontSize: 20.0, color: Colors.black)),
                      color: Colors.grey[200],
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
