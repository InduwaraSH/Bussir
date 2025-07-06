import 'package:bussir/alerts.dart';
import 'package:bussir/home.dart';
import 'package:bussir/route.dart';
import 'package:bussir/tickets.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax/iconsax.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { 
    final controller = Get.put(navig_controll());

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            height: 80,
            indicatorColor: const Color.fromARGB(195, 255, 193, 7),
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Iconsax.direct_up), label: 'Route'),
              NavigationDestination(
                  icon: Icon(Iconsax.receipt), label: 'Tickets'),
              NavigationDestination(
                  icon: Icon(Iconsax.notification), label: 'Alerts'),
            ],
          ),
        ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
      ),
    );
  }
}

class navig_controll extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [route(), home_route(), tickets(), alerts()];
}
