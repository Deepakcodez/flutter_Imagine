import 'package:flutter/material.dart';
import 'package:imagine/components/Buttons.dart';
import 'package:imagine/components/DimentionButtons.dart';
import 'package:imagine/components/ImageSection.dart';
import 'package:imagine/components/Searchbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _searchQuery = "Super car in Clouds"; // Default prompt

  // Callback function to update the query
  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query; // Update query state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 28, 21, 31),
        child: Column(
          children: [
            Expanded(
              flex: 60,
              child: ImageSection(
                  prompt: _searchQuery), // Pass query to ImageSection
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SearchSection(
                  onQueryChanged: _updateSearchQuery), // Pass callback
            ),
            Expanded(flex: 20, child: DimentionButtons()),
            Expanded(
              flex: 15,
              child: Container(
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Buttons(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
