import 'package:flutter/material.dart';

class BusDetailModelpg extends StatelessWidget {
  const BusDetailModelpg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Time Table Bus Detail'),
        ),
        body: SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      width: 240,
                      height: 200,
                      child: Text("data"),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 240,
                      height: 200,
                      child: Text("data"),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 240,
                      height: 200,
                      child: Text("data"),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(20, 20, 00, 10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 0.3 * MediaQuery.of(context).size.width,
                  ),
                  Image(
                    image: AssetImage('images/bus_top.png'),
                    width: 0.29 * MediaQuery.of(context).size.width,
                    height: 500,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
