import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fsearch/fsearch.dart';

import '../utils/color.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: primaryPurple,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset("assets/images/menu.svg"),
                  ),
                  decoration: BoxDecoration(
                    color: lightBlack,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                FSearch(
                  width: 200,
                  height: 45,
                  text: "Search",
                  backgroundColor: lightBlack,
                  corner: FSearchCorner.all(40.0),
                  cornerStyle: FSearchCornerStyle.round,
                  strokeWidth: 1,
                  strokeColor: white,
                  style:
                  TextStyle(fontSize: 16.0, height: 1.0, color: white),
                  margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 9.0),
                  padding: EdgeInsets.only(
                      left: 6.0, right: 6.0, top: 3.0, bottom: 3.0),
                  suffixes: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/images/search.svg",color: primaryPurple,),
                      ),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ],


                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Good Morning, Qubo!",style: TextStyle(fontSize: 19,color: white,fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                Text("Be educated so that you can change the world.",style: TextStyle(fontSize: 12,color: white,fontStyle: FontStyle.normal,fontWeight: FontWeight.normal),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
