import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 240, 240), // Ensure visibility
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
          const SizedBox(width: 10),
          Expanded(
            // Ensures TextField takes available space
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search...",
                hintStyle: TextStyle(fontFamily: 'sfpro'),
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            height: 20,
            width: 1.5,
            color: Colors.grey,
            margin: const EdgeInsets.symmetric(horizontal: 10),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.tune,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
