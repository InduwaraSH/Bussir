import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bus_time_table extends StatelessWidget {
  const Bus_time_table({super.key});

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
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            CupertinoListTile(
              title: Text('One-line with trailing widget'),
              trailing: Icon(Icons.more_vert),
            ),
            CupertinoListTile(
              leading: FlutterLogo(),
              title: Text('One-line with both widgets'),
              trailing: Icon(Icons.more_vert),
            ),
            CupertinoListTile(
              leading: FlutterLogo(size: 56.0),
              title: Text('Two-line CupertinoListTile'),
              subtitle: Text('Here is a subtitle'),
              trailing: Icon(Icons.more_vert),
              additionalInfo: Icon(Icons.info),
            ),
            CupertinoListTile(
              key: Key('CupertinoListTile with background color'),
              leading: FlutterLogo(size: 56.0),
              title: Text('CupertinoListTile with background color'),
              backgroundColor: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
