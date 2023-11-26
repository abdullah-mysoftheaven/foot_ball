import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foot_ball/splash_screen/splash_screen_page_controller.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constant/Colors.dart';
import '../utils/assets.dart';
import 'news_page_view_controller.dart';



class NewsPageView extends StatelessWidget {

   final pageController = Get.put(NewsPageViewController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        child:Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(child: Container(
                    color: Colors.white.withOpacity(0.15),
                    padding:   EdgeInsets.only(left: 10,top: 8,bottom: 8 ),
                    child: Text("NEWS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17 ,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500),
                    )
                ),),
              ],
            ),




            Expanded(child: Expanded(
            child:ListView.builder(
              padding: EdgeInsets.only(bottom: 10 ,top: 10 ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
              return categoryItem( );
              }))

            )




          ],
        ),
      )
    );
  }












   ///TODO: list view item
   Widget categoryItem ( ) {
     return Column(
       children: [

         Row(
           children: [
             Expanded(child: Container(
               height: 100,
                 // color: Colors.white.withOpacity(0.15),
                 padding:   EdgeInsets.only(left: 10,top: 8,bottom: 8 ),
                 child: InkWell(
                   onTap: (){
                     pageController.myUrlLaunch(url: "https://www.espn.in/football/match/_/gameId/671157");
                   },
                   child: Row(
                     children: [
                       Container(
                         height: 90, width: 110,
                         margin:EdgeInsets.only(left: 0,right: 10),
                         child:FadeInImage.assetNetwork(
                           fit: BoxFit.fill,
                           placeholder: Assets.profileAvater,
                           image:"https://contents.spin.ph/image/resize/image/2018/08/21/mo-salah-1534812024.webp",
                           imageErrorBuilder: (context, url, error) =>
                               Image.asset(
                                 Assets.profileAvater,
                                 fit: BoxFit.fill,
                               ),
                         ),
                       ),
                       const Expanded(child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Expanded(child: Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Expanded(child: Text(
                                 "Richie Wellens has found the right Leyton Orient formula after slow League One start Richie Wellens has found the right Leyton Orient formula after slow League One start",
                                 maxLines: 3,


                                 overflow: TextOverflow.ellipsis,
                                 style: TextStyle(
                                     color: Colors.white,

                                     fontSize: 15 ,
                                     decoration: TextDecoration.none,
                                     fontWeight: FontWeight.normal),
                               ))
                             ],
                           )
                           ),
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text("26/11/23 11:30",
                                 style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 13 ,
                                     decoration: TextDecoration.none,
                                     fontWeight: FontWeight.normal),
                               )
                             ],
                           )
                         ],
                       ))


                     ],
                   ),
                 )
             ),),
           ],
         ),



       ],
     );




   }





}

