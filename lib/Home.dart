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
  String _searchQuery = "Super car in Clouds";
  int _height = 1000;
  int _width = 700;
  // Callback function to update the query
  void _updateSearchQuery(String query) {
    setState(() {
      _searchQuery = query; // Update query state
    });
  }

  void _updateHeight(int height) {
    setState(() {
      _height = height;
    });
  }

  void _updateWidth(int width) {
    setState(() {
      _width = width;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 28, 21, 31),
        child: Column(
          children: [
            Expanded(
              flex: 60,
              child: ImageSection(
                prompt: _searchQuery,
                height: _height,
                width:_width,
              ), // Pass query to ImageSection
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SearchSection(
                onQueryChanged: _updateSearchQuery,
              ), // Pass callback
            ),
            if (!isKeyboardOpen)
              Expanded(
                  flex: 20,
                  child: DimentionButtons(
                    height : _height,
                    onHeightChanged: _updateHeight,
                  )),
            if (!isKeyboardOpen)
              Expanded(
                flex: 15,
                child: SizedBox(
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
