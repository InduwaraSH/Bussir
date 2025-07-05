import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BusDetailModelpg extends StatefulWidget {
  final String driverName;
  final String driverTPNumber;
  final String busNumber;

  const BusDetailModelpg({
    super.key,
    required this.driverName,
    required this.driverTPNumber,
    required this.busNumber,
  });

  @override
  State<BusDetailModelpg> createState() => _BusDetailModelpgState();
}

class _BusDetailModelpgState extends State<BusDetailModelpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Time Table Bus Detail',
            style: TextStyle(
                fontFamily: 'sfpro',
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
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
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(20, 60, 0, 0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Bus Number",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'sfpro',
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.verified,
                                color: Colors.blue,
                                size: 25,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            widget.busNumber,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sfpro',
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 240,
                      height: 200,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Bus Driver",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'sfpro',
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            widget.driverName,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'sfpro',
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 240,
                      height: 150,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.fromLTRB(20, 20, 00, 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Ratings",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'sfpro',
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "4.1",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontFamily: 'sfpro',
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.fromLTRB(20, 20, 00, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 175, 233, 177)
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: CupertinoButton(
                        onPressed: () {},
                        color: const Color.fromARGB(255, 119, 214, 122),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.call_rounded,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Call me",
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'sfpro',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
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
                    width: 0.3 * MediaQuery.of(context).size.width,
                    height: 500,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
