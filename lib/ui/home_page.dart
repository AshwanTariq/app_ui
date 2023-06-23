import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fsearch/fsearch.dart';
import 'package:text_project/utils/color.dart';
import 'package:text_project/widgets/subject_widget.dart';

import '../widgets/app_bar.dart';
import '../widgets/bottom_navigation.dart';
import '../widgets/catgory.dart';
import '../widgets/video_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> list = [
    Subject(path: "assets/images/notes.svg", number: "", text: "Study Notes"),
    Subject(path: "assets/images/degree.svg", number: "", text: "Weekly exams"),
    Subject(path: "assets/images/video.svg", number: "34", text: "Live classes"),
    Subject(path: "assets/images/face.svg", number: "27", text: "Recorded videos"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(140), child: MyAppBar()),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Types(),
            Padding(
              padding: const EdgeInsets.only(left: 14,right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ON SALE",
                    style: TextStyle(
                        color: primaryPurple, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        color: primaryPurple, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SubjectType(
                      value: 'Spoken English',
                      subject: '\$49.99',
                      discountValue: '\$9.99',
                      list: list,
                      path: "assets/images/teacher.png",
                    ),
                    SubjectType(
                      value: 'Product Design',
                      subject: '\$19.99',
                      discountValue: '\$10.99',
                      list: list,
                      path: "assets/images/product_design.png",
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SubjectType(
                  value: 'Spoken English',
                  subject: '',
                  discountValue: '\$29.99',
                  list: list,
                  path: "assets/images/teacher.png",
                ),
                SubjectType(
                  value: 'Project Management',
                  subject: '',
                  discountValue: '\$49.99',
                  list: list,
                  path: "assets/images/project_mng.png",
                ),
                SubjectType(
                  value: 'Product Design',
                  subject: '',
                  discountValue: '\$19.99',
                  list: list,
                  path: "assets/images/product_design.png",
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
