import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Feedbackpage extends StatefulWidget {
  const Feedbackpage({super.key});

  @override
  State<Feedbackpage> createState() => _FeedbackpageState();
}

class _FeedbackpageState extends State<Feedbackpage> {
  int _selectedTown = 0;
  int _selectedTown_Drop = 0;
  static const double _kItemExtent = 32.0;
  static const List<String> _townName = <String>[
    'Maharagama',
    'Embilipitya',
    'Matara',
    'Galle',
    'Colombo',
    'Trinco',
    'Walasmulla',
    'Negambo'
  ];

  static const List<String> _townName_Drop = <String>[
    'Pabahinna',
    'Balangoda',
    'Rathnapura',
    'Kandy',
    'Nuwara Eliya',
    'Badulla',
    'Bandarawela',
    'Haputale'
        'Kegalle',
    'Kurunegala',
    'Anuradhapura',
    'Polonnaruwa',
    'Kataragama',
    'Tissamaharama',
    'Hambantota',
    'Akuressa',
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: CupertinoNavigationBarBackButton(
          color: Colors.amber,
          previousPageTitle: 'Home Page',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: 200,
                    width: size.width - 40,
                    color: Colors.grey[200],
                    child: DefaultTextStyle(
                      style: TextStyle(
                          color: CupertinoColors.label.resolveFrom(context),
                          fontSize: 22.0),
                      child: Column(
                        children: [
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Pickup Stand :  ',
                                style: TextStyle(
                                    fontFamily: 'sfpro',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              CupertinoButton(
                                padding: EdgeInsets.zero,
                                // Display a CupertinoPicker with list of Stands.
                                onPressed: () => _showDialog(
                                  CupertinoPicker(
                                    magnification: 1.22,
                                    squeeze: 1.2,
                                    useMagnifier: true,
                                    itemExtent: _kItemExtent,
                                    // This sets the initial item.
                                    scrollController:
                                        FixedExtentScrollController(
                                            initialItem: _selectedTown),
                                    // This is called when selected item is changed.
                                    onSelectedItemChanged: (int selectedItem) {
                                      setState(() {
                                        _selectedTown = selectedItem;
                                      });
                                    },
                                    children: List<Widget>.generate(
                                        _townName.length, (int index) {
                                      return Center(
                                          child: Text(_townName[index]));
                                    }),
                                  ),
                                ),
                                // This displays the selected fruit name.
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Container(
                                      color: Colors.grey[200],
                                      padding: EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          top: 5.0,
                                          bottom: 5.0),
                                      child: Text(_townName[_selectedTown],
                                          style: const TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.black)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Icon(
                            Icons.arrow_drop_down_circle,
                            size: 30,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "Drop Stand :  ",
                                style: TextStyle(
                                    fontFamily: 'sfpro',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () => _showDialog(CupertinoPicker(
                                  magnification: 1.22,
                                  squeeze: 1.2,
                                  useMagnifier: true,
                                  itemExtent: _kItemExtent,
                                  scrollController: FixedExtentScrollController(
                                      initialItem: _selectedTown_Drop),
                                  onSelectedItemChanged:
                                      (int selected_item_drip) {
                                    setState(() {
                                      _selectedTown_Drop = selected_item_drip;
                                    });
                                  },
                                  children: List<Widget>.generate(
                                      _townName_Drop.length, (int index) {
                                    return Center(
                                        child: Text(_townName_Drop[index]));
                                  }),
                                )),
                                child: Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Container(
                                      color: Colors.grey[200],
                                      padding: EdgeInsets.only(
                                          left: 20.0,
                                          right: 20.0,
                                          top: 5.0,
                                          bottom: 5.0),
                                      child: Text(_townName[_selectedTown],
                                          style: const TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.black)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              )
            ],
          )
        ],
      ),
      // body: Container(
      //   child: ClipRRect(
      //     borderRadius: BorderRadius.circular(50.0),
      //     child: Container(
      //       width: size.width,
      //       height: 200,
      //       color: Colors.amber,
      //       margin: EdgeInsets.only(left: 20, right: 20, top: 20),
      //       padding: EdgeInsets.all(10),
      //     ),
      //   ),
      // ),
    );
  }
}
