import 'package:elevated_ticket_widget/elevated_ticket_widget.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Ongoingscreen extends StatefulWidget {
  const Ongoingscreen({super.key});

  @override
  State<Ongoingscreen> createState() => _ClosedtktState();
}

class _ClosedtktState extends State<Ongoingscreen> {
  // Sample Ticket Data List
  // final List<Map<String, String>> tickets = [
  //   {
  //     "busNo": "ABC123",
  //     "boardingTime": "11:30 AM",
  //     "gate": "08-Hw",
  //     "seat": "11",
  //     "passengerName": "Induwara Dilhara",
  //     "from": "Matara",
  //     "to": "Colombo",
  //     "date": "30NOV",
  //     "ticketNo": "345-65647527457",
  //   },
  //   {
  //     "busNo": "XYZ456",
  //     "boardingTime": "2:45 PM",
  //     "gate": "05-X",
  //     "seat": "7",
  //     "passengerName": "Kamal Perera",
  //     "from": "Galle",
  //     "to": "Kandy",
  //     "date": "15DEC",
  //     "ticketNo": "987-123456789",
  //   },
  //   {
  //     "busNo": "XYZ456",
  //     "boardingTime": "2:45 PM",
  //     "gate": "05-X",
  //     "seat": "7",
  //     "passengerName": "Kamal Perera",
  //     "from": "Galle",
  //     "to": "Kandy",
  //     "date": "15DEC",
  //     "ticketNo": "987-123456789",
  //   },
  // ];

  final DatabaseReference Dbref =
      FirebaseDatabase.instance.ref().child('TicketIssue');
  List<Map<String, String>> tickets = [];

  @override
  void initState() {
    super.initState();
    fetchTickets();
  }

  void fetchTickets() async {
    final snapshot = await Dbref.get();
    if (snapshot.exists) {
      List<Map<String, String>> fetchedTickets = [];
      Map data = snapshot.value as Map;
      data.forEach((key, value) {
        fetchedTickets.add({
          "busNo": value['Bus Number'] ?? "N/A",
          "boardingTime": value['Departure Time'] ?? "N/A",
          "gate": value["gate"] ?? "N/A",
          "seat": value["seat"] ?? "N/A",
          "passengerName": value['Passenger ID'] ?? "N/A",
          "from": value['From'] ?? "N/A",
          "to": value['To'] ?? "N/A",
          "date": value['Date'] ?? "N/A",
          "ticketNo": value["ticketNo"] ?? "N/A",
        });
      });
      setState(() {
        tickets = fetchedTickets;
      });
    } else {
      print("No data available");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.only(left: 35, top: 0, bottom: 20),
          itemCount: tickets.length,
          itemBuilder: (context, index) {
            return SingleChildScrollView(
              child: TicketWidget(
                busNo: tickets[index]["busNo"]!,
                boardingTime: tickets[index]["boardingTime"]!,
                gate: tickets[index]["gate"]!,
                seat: tickets[index]["seat"]!,
                passengerName: tickets[index]["passengerName"]!,
                from: tickets[index]["from"]!,
                to: tickets[index]["to"]!,
                date: tickets[index]["date"]!,
                ticketNo: tickets[index]["ticketNo"]!,
              ),
            );
          },
        ),
      ),
    );
  }
}

// Reusable Ticket Widget
class TicketWidget extends StatelessWidget {
  final String busNo,
      boardingTime,
      gate,
      seat,
      passengerName,
      from,
      to,
      date,
      ticketNo;

  const TicketWidget({
    super.key,
    required this.busNo,
    required this.boardingTime,
    required this.gate,
    required this.seat,
    required this.passengerName,
    required this.from,
    required this.to,
    required this.date,
    required this.ticketNo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 25),
      child: ElevatedTicketWidget(
        height: 350,
        width: 300,
        elevation: 1.5,
        backgroundColor: const Color.fromARGB(195, 255, 193, 7),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row (Logo + Bus Details)
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.emoji_transportation,
                            color: Colors.white, size: 40),
                        Text('SLTB',
                            style:
                                TextStyle(color: Colors.white, fontSize: 11)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('BUS NO', style: _boldStyle),
                        Text(busNo, style: _boldStyle),
                        const SizedBox(height: 8),
                        Text('BOARDING TIME', style: _boldStyle),
                        Text(boardingTime, style: _boldStyle),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Gate & Seat
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('GATE', style: _boldStyle),
                        Text(gate, style: _boldStyle),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('SEAT', style: _boldStyle),
                        Text(seat, style: _boldStyle),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Passenger Name
              Row(
                children: [
                  Text('PASSENGER NAME: ', style: _boldStyle),
                  Text(passengerName, style: _italicStyle),
                ],
              ),
              const SizedBox(height: 16),

              // From - To
              Row(
                children: [
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text('FROM', style: _boldStyle),
                        Text(from, style: _boldStyle)
                      ])),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Text('TO', style: _boldStyle),
                        Text(to, style: _boldStyle)
                      ])),
                ],
              ),
              const SizedBox(height: 16),

              // Date
              Row(
                children: [
                  Text('DATE: ', style: _boldStyle),
                  Text(date, style: _boldStyle),
                ],
              ),
              const SizedBox(height: 20),

              // Ticket Number
              Center(child: Text('E-TICKET $ticketNo')),
            ],
          ),
        ),
      ),
    );
  }

  static const TextStyle _boldStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w800);
  static const TextStyle _italicStyle = TextStyle(
      fontSize: 12, fontWeight: FontWeight.w800, fontStyle: FontStyle.italic);
}
