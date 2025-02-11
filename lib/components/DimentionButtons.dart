import 'package:flutter/material.dart';

class DimentionButtons extends StatefulWidget {
  const DimentionButtons({super.key});

  @override
  State<DimentionButtons> createState() => _DimentionButtonsState();
}

class _DimentionButtonsState extends State<DimentionButtons> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final boxSize = screenWidth * .29;

    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: boxSize,
              width: boxSize,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(32, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            Container(
              height: boxSize,
              width: boxSize,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(32, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            Container(
              height: boxSize,
              width: boxSize,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(32, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ],
        ),
      ),
    );
  }
}
