import 'package:flutter/material.dart';


class home_route extends StatelessWidget {
  const home_route({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "Maps",
              style: TextStyle(
                  fontFamily: 'sfpro',
                  fontSize: 35,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: size.height * 0.68,
              width: size.width,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromARGB(255, 216, 36, 36)),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                
              ),
            )
          ],
        ),
      ),
      // debugShowCheckedModeBanner: false,
      // title: 'WebView App',
      // theme: ThemeData(primarySwatch: Colors.blue),
      // home: WebViewScreen(),
    );
  }
}
