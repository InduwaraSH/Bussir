import 'package:elevated_ticket_widget/elevated_ticket_widget.dart';
import 'package:flutter/material.dart';

class Closedtkt extends StatefulWidget {
  const Closedtkt({super.key});

  @override
  State<Closedtkt> createState() => _ClosedtktState();
}

class _ClosedtktState extends State<Closedtkt> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedTicketWidget(
                  height: 400,
                  width: 300,
                  elevation: 1.5,
                  backgroundColor: Color.fromARGB(195, 255, 193, 7),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                boxShadow: const [
                                  BoxShadow(color: Colors.black12),
                                ],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.emoji_transportation,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  Text(
                                    'SLTB',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                        fontFamily: 'sfpro'),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'BUS NO',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'sfpro',
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            Text(
                                              'ABC123',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'sfpro',
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'BOARDING TIME',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'sfpro',
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            Text(
                                              '11:30 Am',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'sfpro',
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 16),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'GATE',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'sfpro',
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            Text(
                                              '08-Hw',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'sfpro',
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'SEAT',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'sfpro',
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            Text(
                                              '11',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'sfpro',
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Row(
                                        children: [
                                          Text(
                                            'PASSANGER NAME :',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'sfpro',
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Text(
                                            'Induwara Dilhara',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'sfpro',
                                                fontWeight: FontWeight.w800,
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'FROM',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                    Text(
                                      'Matara',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'TO',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                    Text(
                                      'Colombo',
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Row(
                          children: [
                            Text(
                              'DATE: ',
                              style: TextStyle(fontSize: 11),
                            ),
                            Text(
                              '30NOV',
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Center(child: Text('E-TICKET 345-65647527457')),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
