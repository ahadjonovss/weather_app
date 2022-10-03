import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/pages/secondPage.dart';
import 'package:weather_app/utils/colors.dart';
import 'package:weather_app/utils/fonts.dart';
import 'package:weather_app/utils/icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 850,
      width: 400,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            MyColors.C_FEB054.withOpacity(0.5),
            MyColors.C_FEA14E.withOpacity(1)
          ])),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 16.72, left: 15.51),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          MyIcons.search,
                          fit: BoxFit.cover,
                          width: 40,
                        ))),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 22, left: 90),
                    child: SvgPicture.asset(
                      MyIcons.point,
                      width: 80,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 30, left: 100),
                    child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          MyIcons.menu,
                          fit: BoxFit.cover,
                          width: 40,
                        ))),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Tashkent\nUzbekistan",
                    style: MyFonts.Inter_Medium.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 28),
                  ),
                  margin: EdgeInsets.only(top: 30,left: 30),
                ),
                Container(
                    child: Text("Tue,Jun 30",style: MyFonts.Inter_Regular.copyWith(color: Color(0xFF9A938C),fontSize: 16),),
                  margin: EdgeInsets.only(left: 30),
                ),
                Container(
                  margin: EdgeInsets.only(right: 70,top: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(MyIcons.sun_rainy,height: 200,width: 150),
                      Column(
                        children: [
                          Text("19",style: MyFonts.Inter_Regular.copyWith(fontSize: 90),),
                          Text("Rainy",style: MyFonts.Inter_Medium.copyWith(fontWeight: FontWeight.w400),)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4,),
                infoWidget(MyIcons.rainFall,"RainFall",'3cm'),
                SizedBox(height: 4,),
                infoWidget(MyIcons.wind,"Wind",'19 km/h'),
                SizedBox(height: 4,),
                infoWidget(MyIcons.humidity,"Humidity",'64%'),
                SizedBox(height: 4,),
                Container(
                  padding: EdgeInsets.only(left: 36,top: 12,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Today",style: MyFonts.Inter_Bold.copyWith(fontSize: 16),),
                      Text("Tomorrow",style: MyFonts.Inter_Thin.copyWith(fontSize: 16),),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                        },
                          child: Text("Next 7 days >",style: MyFonts.Inter_Thin.copyWith(fontSize: 16),)),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 8,top: 4),
                  height: 140,
                  width: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      gradus(),
                      gradus(),
                      gradus(),
                      gradus(),
                      gradus(),
                      gradus(),


                    ],
                  ),
                )



              ],
            ),
          ),
        ],
      ),
    ));
  }
}

Widget infoWidget(String icon,firstTxt,secondTxt){
  return Center(
    child: Container(
      width: 330,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.36),
              ]

          )
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(icon),
                    fit: BoxFit.cover

                )
            ),
          ),
          Text(firstTxt,style: TextStyle(fontSize: 16),),
          Container(
              margin: EdgeInsets.only(left: 130),
              child: Text(secondTxt,style: TextStyle(fontSize: 16),))
        ],
      ),
    ),
  );
}

Widget gradus(){
  return Container(
    margin:EdgeInsets.only(left: 8),
    height: 120,
    width: 70,
    decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.all(Radius.circular(40))

    ),
    child: Column(
      children: [
        SizedBox(height: 16,),
        Text("14:00"),
        SizedBox(height: 2,),
        SvgPicture.asset(MyIcons.sun,width: 60,height: 60,),
        SizedBox(height: 2,),
        Container(
            margin: EdgeInsets.only(left: 4),
            child: Text("21°",style: MyFonts.Inter_Bold.copyWith(fontSize: 16),))
      ],
    ),
  );
}

