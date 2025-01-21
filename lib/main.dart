import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:iconsax/iconsax.dart';

void main() {
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
        body: controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class navig_controll extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Container(color: Colors.amber),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.pink)
  ];
}
