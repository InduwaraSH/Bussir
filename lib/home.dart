import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text(
              "MedCare",
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
                child: WebViewScreen(),
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

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  WebViewController? _controller; // Use nullable type

  @override
  void initState() {
    super.initState();

    // Initialize WebView
    _initializeWebView();
  }

  Future<void> _initializeWebView() async {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
          "https://my.atlist.com/map/ae914b3c-c193-4a54-800a-1780e970ec5f?share=true"));

    setState(() {
      _controller = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _controller == null
            ? Center(
                child:
                    CircularProgressIndicator()) // Show loader while initializing
            : WebViewWidget(controller: _controller!),
      ),
    );
  }
}
