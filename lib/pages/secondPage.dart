import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/utils/fonts.dart';
import 'package:weather_app/utils/icons.dart';

import '../utils/colors.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              MyColors.C_FEB054.withOpacity(0.5),
              MyColors.C_FEA14E.withOpacity(1)
            ])),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          child: SvgPicture.asset(
                            MyIcons.back_icon,
                            height: 50,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 90, top: 16),
                        child: Text(
                          "Next 7 days",
                          style: MyFonts.Inter_Regular.copyWith(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15, top: 40),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(colors: [
                          Colors.white.withOpacity(0.8),
                          Colors.white.withOpacity(0.6)
                        ])),
                    child: Stack(
                      children:  [
                        Positioned(
                          top: 32,
                          child: Container(
                            child: Text(
                              "Tomorrow",
                              style: MyFonts.Inter_Bold.copyWith(fontSize: 12),
                            ),
                            margin: EdgeInsets.only(left: 20),
                          ),
                        ),
                        Positioned(
                          right: 70,
                          top: 32,
                          child: Container(
                            child: Text(
                              "21°",
                              style: MyFonts.Inter_Bold.copyWith(fontSize: 12),
                            ),
                            margin: EdgeInsets.only(
                              left: 150,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 240,
                          child: SvgPicture.asset(MyIcons.sun_rainy),
                          height: 70,
                        ),
                        Positioned(
                            top: 70,
                            left: 60,
                              child:Image.asset(MyIcons.rainFall),
                            ),
                        Positioned(
                          left: 90,
                          top: 140,
                          child: Text(
                          "1cm",
                          style: MyFonts.Inter_Bold.copyWith(fontSize: 12),
                        ),
                        ),
                        Positioned(
                          top: 70,
                          left: 130,
                          child:Image.asset(MyIcons.wind),
                        ),
                        Positioned(
                          left: 150,
                          top: 140,
                          child: Text(
                            "15 km/h",
                            style: MyFonts.Inter_Bold.copyWith(fontSize: 12),
                          ),
                        ),
                        Positioned(
                          top: 90,
                          left: 210,
                          child:Image.asset(MyIcons.humidity),
                        ),
                        Positioned(
                          left: 230,
                          top: 140,
                          child: Text(
                            "60 %",
                            style: MyFonts.Inter_Bold.copyWith(fontSize: 12),
                          ),
                        )
                      ],
                    ),

                  ),
                  SizedBox(height: 40,),
                  days(),
                  SizedBox(height: 12,),
                  days(),
                  SizedBox(height: 12,),
                  days(),
                  SizedBox(height: 12,),
                  days(),
                  SizedBox(height: 12,),
                  days(),
                  SizedBox(height: 12,),
                  days(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget days(){
  return Container(
    padding: EdgeInsets.only(left: 16,right: 16),
    width: 400,
    height: 80,
    margin: EdgeInsets.only(right: 15,left: 15),
    decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0.4),
              Colors.white.withOpacity(0.36)
            ]
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: Center(

      child: Row(
        children: [
          Text("Thursday",style: MyFonts.Inter_Bold.copyWith(fontSize: 12),),
          SizedBox(width: 170,),
          Text(
            "21°",
            style: MyFonts.Inter_Bold.copyWith(fontSize: 12),
          ),
          SizedBox(width: 16,),
          SvgPicture.asset(MyIcons.sun,height: 40,),
        ],
      ),
    ),
  );
}