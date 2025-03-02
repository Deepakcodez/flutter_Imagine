import 'package:flutter/material.dart';
import 'package:imagine/components/constant.dart';

class DimentionButtons extends StatefulWidget {
  final int height;
  final Function(int) onHeightChanged;
  const DimentionButtons(
      {super.key, required this.height, required this.onHeightChanged});

  @override
  State<DimentionButtons> createState() => _DimentionButtonsState();
}

class _DimentionButtonsState extends State<DimentionButtons> {
  late int currentHeight;
  @override
  void initState() {
    super.initState();
    currentHeight = height;
  }

  void _changeHeight() {
    setState(() {
      if (currentHeight == 700) {
        currentHeight = 1000;
      } else if (currentHeight == 1000) {
        currentHeight = 300;
      } else {
        currentHeight = 700;
      }
    });
    widget.onHeightChanged(currentHeight);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final boxSize = screenWidth * .29;

    return Padding(
      padding: EdgeInsets.all(15),
      child: SizedBox(
        width: double.maxFinite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: boxSize,
              width: boxSize,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(32, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: const Color(0xFF523754), width: 2)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Height",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color.fromARGB(86, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: InkWell(
                        onDoubleTap: _changeHeight,
                        child: Text(
                          height.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color.fromARGB(190, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
