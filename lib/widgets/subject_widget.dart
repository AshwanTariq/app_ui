

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:text_project/utils/color.dart';

class Subject extends StatelessWidget {
   Subject({Key? key,required this.path,required this.number,required this.text}) : super(key: key);

  String path;
  String number;
  String text;
  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: SvgPicture.asset(path),
      label: Text("$number $text",style: TextStyle(fontSize: 12),),
    );
  }
}
