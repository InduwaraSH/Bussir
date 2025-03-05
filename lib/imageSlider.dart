import 'package:flutter/material.dart';

class imageslider extends StatelessWidget {
  final Function(int) onImageChanged;
  final int currentImage;
  const imageslider(
      {super.key, required this.onImageChanged, required this.currentImage});

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
              onPageChanged: onImageChanged,
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
        ),
        Positioned.fill(
            bottom: 10,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => AnimatedContainer(
                          duration: Duration(microseconds: 300),
                          width: currentImage == index ? 15 : 8,
                          height: 8,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentImage == index
                                ? Colors.white
                                : Colors.transparent,
                            border: Border.all(color: Colors.white),
                          ),
                        )),
              ),
            ))
      ],
    );
  }
}
