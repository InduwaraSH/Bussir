import 'package:flutter/material.dart';

class imageslider extends StatelessWidget {
  const imageslider({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "images/img_01.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/img_02.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "images/img_03.png",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
