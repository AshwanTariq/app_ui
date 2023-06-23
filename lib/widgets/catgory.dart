import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:text_project/utils/color.dart';

class Types extends StatefulWidget {
  const Types({Key? key}) : super(key: key);

  @override
  State<Types> createState() => _TypesState();
}

class _TypesState extends State<Types> {
  int _selectedIndex = 0;
  List<String> subjects = ['All', 'Design', 'Communication', 'Development','Science'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: subjects
            .asMap()
            .entries
            .map(
              (entry) => Padding(
            padding: EdgeInsets.all(8.0),
            child: ChoiceChip(
              selectedColor: primaryPurple,

              label: Text(entry.value,
                style: TextStyle(
                  color: _selectedIndex == entry.key
                      ? white
                      : primaryPurple,
                ),),
              selected: _selectedIndex == entry.key,
              onSelected: (bool selected) {
                setState(() {
                  _selectedIndex = selected ? entry.key : -1;
                });
              },
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}
