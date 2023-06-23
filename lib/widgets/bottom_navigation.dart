import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/color.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;






  @override
  Widget build(BuildContext context) {








    return Container(
      height: 80.0,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: primaryPurple,
        borderRadius: BorderRadius.circular(80.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildNavItem("assets/images/home.svg", "Home", 0),
          buildNavItem("assets/images/save.svg", "Saved", 1),
          buildNavItem("assets/images/course.svg", "Course", 2),
          buildNavItem("assets/images/library.svg", "Library", 3),
        ],
      ),
    );
  }

  Widget buildNavItem(String icon, String title, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(icon,color: _currentIndex == index ? white: grey,),
          const SizedBox(height: 3.0),
          Text(
            title,
            style: TextStyle(
              color: _currentIndex == index ?  white: grey,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
