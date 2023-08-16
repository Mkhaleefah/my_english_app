import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_english_app/appicon/AppIcon.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: 400,
            decoration: BoxDecoration(
                image: DecorationImage(
                    // image: SvgPicture.asset("images/stephine_plant.svg"),
                    image: AssetImage("images/stephine_plant.jpg"))),
          ),
        ),
        Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // IconButton.filled(
                //     onPressed: () {},
                //     color: Colors.black,
                //     style: IconButton.styleFrom(
                //         backgroundColor: Colors.red,
                //         alignment: Alignment.center),
                //     icon: Icon(
                //       Icons.arrow_back_ios_new,
                //     )),
                AppIcon(
                  iconColor: Colors.black,
                  icon: Icons.arrow_back_ios_new,
                  backgroundColor: Colors.grey,
                ),
                AppIcon(
                  icon: Icons.favorite,
                  iconColor: Colors.white,
                  backgroundColor: Color(0xff1A4F2F),
                )
              ],
            )),
        Positioned(
          left: 0,
          right: 0,
          top: 20,
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ]),

      //     body: Container(
      //   child: Column(
      //     children: [
      //       Center(
      //         child: Text(
      //           'Snake Plant',
      //           style: TextStyle(
      //               color: Color(0xff1A4F2F),
      //               fontWeight: FontWeight.bold,
      //               fontSize: 15),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 10,
      //       ),
      //       Text(
      //         '80.00',
      //         style: TextStyle(
      //             color: Color(0xff1A4F2F),
      //             fontWeight: FontWeight.bold,
      //             fontSize: 15),
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}
