import 'package:flutter/material.dart';

class SearchSection extends StatefulWidget {
  final Function(String) onQueryChanged; // Callback function to pass query up

  const SearchSection({super.key, required this.onQueryChanged});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final TextEditingController _searchQuery = TextEditingController();

  @override
  void dispose() {
    _searchQuery.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: SearchBar(
        hintText: "Enter What you can Imagine",
        controller: _searchQuery,
        onChanged: (query) {
          widget.onQueryChanged(query); // Pass input up to Home
        },
        leading: Image.asset(
          'assets/icons/glow.png',
          height: 25,
          width: 25,
        ),
        trailing: [
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              _searchQuery.clear(); // Clear search bar
              widget.onQueryChanged(
                  "In a mesmerizing cosmic tapestry, a breathtaking spiral galaxy unfurls its arms in deep azure and verdant hues, weaving through the vast expanse of the universe. The luminous core glimmers with fiery shades of orange and golden yellow, exuding a radiant warmth that contrasts vividly with the cool colors surrounding it. Scattered throughout the backdrop are countless twinkling stars, each a whisper of distant worlds, contributing to the overall awe-inspiring spectacle. With its cinematic allure, this scene captures the grandeur of the cosmos, illuminating the beauty and mystery of space in a vibrant display that draws the viewer into its celestial embrace. Cinematic,  Deep blue, and green Spiral Galaxy: A stunning spiral galaxy with deep blue and green arms, radiant orange and yellow core, and scattered bright stars in the background. 26vnl");
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
