import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:text_project/utils/color.dart';
import 'package:text_project/widgets/subject_widget.dart';

class SubjectType extends StatelessWidget {
  SubjectType(
      {Key? key,
      required this.value,
      required this.subject,
      required this.discountValue,
      required this.list,
      required this.path})
      : super(key: key);

  String subject, value, discountValue;
  List<Widget> list;
  String path;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8,bottom: 8),
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: primaryPurple),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [

              Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    path,
                    width: 100,
                    height: 100,
                  ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.play_arrow_outlined,color: white,),
                  ),
                  decoration: BoxDecoration(
                    color: primaryPurple,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    Text(
                      value,
                      style: TextStyle(
                          fontSize: 18,
                          color: primaryPurple,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      subject,
                      style: TextStyle(
                          fontSize: 12,
                          color: primaryPurple,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      discountValue,
                      style: TextStyle(fontSize: 12, color: primaryPurple),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Wrap(
                  children: list,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
