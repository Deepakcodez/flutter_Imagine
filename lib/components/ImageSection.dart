import 'dart:ui';
import 'package:flutter/material.dart';

class ImageSection extends StatefulWidget {
  final String prompt;
  final int height;
  final int width;

  const ImageSection(
      {super.key,
      required this.prompt,
      required this.height,
      required this.width});

  @override
  State<ImageSection> createState() => _ImageSectionState();
}

class _ImageSectionState extends State<ImageSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(91, 181, 54, 244),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 81, sigmaY: 90),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(
                      'https://image.pollinations.ai/prompt/${Uri.encodeComponent(widget.prompt)}?width=${widget.width}&height=${widget.height}&nologo=true&seed=3880840',
                    ),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Image.network(
                    'https://image.pollinations.ai/prompt/${Uri.encodeComponent(widget.prompt)}?width=${widget.width}&height=${widget.height}&nologo=true&seed=30840',
                    fit: BoxFit
                        .contain, // Ensures the image covers the entire space
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
