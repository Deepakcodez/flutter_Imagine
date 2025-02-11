import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final String prompt; // Receive the search query as a prop

  const ImageSection({super.key, required this.prompt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: const Color.fromARGB(91, 181, 54, 244),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        child: Image.network(
          'https://image.pollinations.ai/prompt/${Uri.encodeComponent(prompt)}?width=800&height=800&nologo=true&seed=2840',
          fit: BoxFit.cover, // Ensures the image covers the entire space
        ),
      ),
    );
  }
}
