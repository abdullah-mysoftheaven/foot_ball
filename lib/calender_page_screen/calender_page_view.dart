import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foot_ball/splash_screen/splash_screen_page_controller.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constant/Colors.dart';
import '../utils/assets.dart';
import 'calender_page_view_controller.dart';



class CalenderPageView extends StatelessWidget {

   final pageController = Get.put(CalenderPageViewController());

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
                    child: Text("CALENDER",
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

            Row(
              children: [
                Expanded(child: Container(
                  height: 40,

                  child: Obx(() => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: pageController.controller.value,
                    itemCount: pageController.dateList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          pageController.selectedIndex(index);
                          pageController.scrollToMiddle( );
                        },
                        child: Obx(() => Container(
                          width: 150.0,
                          padding: EdgeInsets.only(left: 8,right: 8),
                          color: pageController.selectedIndex.value == index ? Colors.blue : Colors.grey,
                          child: Center(
                            child: Text(
                              pageController.dateList[index].toString(),
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                      );
                    },
                  )),
                ))
              ],
            ),


            Expanded(child: Expanded(
            child:ListView.builder(
              padding: EdgeInsets.only(bottom: 10 ,top: 10 ),
              itemCount: 5,
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
                 color: Colors.white.withOpacity(0.15),
                 padding:   EdgeInsets.only(left: 10,top: 8,bottom: 8 ),
                 child: Row(
                   children: [
                     Container(
                       height: 20, width: 28,
                       margin:EdgeInsets.only(left: 0,right: 10),
                       child:FadeInImage.assetNetwork(
                         fit: BoxFit.fill,
                         placeholder: Assets.profileAvater,
                         image:"https://t4.ftcdn.net/jpg/03/21/70/45/360_F_321704592_azoD811yWmGtGixdjW2koEM1i4ZSksyA.jpg",
                         imageErrorBuilder: (context, url, error) =>
                             Image.asset(
                               Assets.profileAvater,
                               fit: BoxFit.fill,
                             ),
                       ),
                     ),
                     Text("BANGLADESH PREMIER LEAGUE",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 18 ,
                           decoration: TextDecoration.none,
                           fontWeight: FontWeight.normal),
                     )
                   ],
                 )
             ),),
           ],
         ),

         ListView.builder(
             padding: EdgeInsets.zero,
             itemCount:4,
             shrinkWrap: true,
             physics: const NeverScrollableScrollPhysics(),
             itemBuilder: (BuildContext context, int index) {
               return categoryListItem();
             })


       ],
     );




   }
   Widget categoryListItem ( ){
     return  Container(
       padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
       child: Row(
         children: [
           Icon(Icons.notifications_rounded,size: 18,color: Colors.white,),
           SizedBox(
             width: 10,
           ),

           Expanded(child: Row(
             mainAxisAlignment: MainAxisAlignment.end,

             children: [
             Expanded(child:   Text(
                 "Bashundhara Kings",
                 maxLines: 3,
                 overflow: TextOverflow.ellipsis,
                 textAlign: TextAlign.right,
                 style:   TextStyle(
                     color:Colors.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w400),
               )),
               SizedBox(width: 3,),
             Container(
               height: 25, width: 25,

               child:ClipRRect(
                 borderRadius: BorderRadius.circular(25), // Adjust the radius to control the rounding
                 child:FadeInImage.assetNetwork(
                   fit: BoxFit.fill,
                   placeholder: Assets.profileAvater,
                   image:"https://ssl.gstatic.com/onebox/media/sports/logos/8NSdffH3dYyTy5jLBAKDZA_96x96.png",
                   imageErrorBuilder: (context, url, error) =>
                       Image.asset(
                         Assets.profileAvater,
                         fit: BoxFit.fill,
                       ),
                 ),


               ),
             ),

           ],)),

           SizedBox(width: 5,),
           Column(
             children: [
               Row(
                 children: [
                   Text(
                     "0 - 0",
                     maxLines: 3,
                     overflow: TextOverflow.ellipsis,
                     textAlign: TextAlign.center,
                     style:   TextStyle(
                         color:Colors.white,
                         fontSize: 12,
                         fontWeight: FontWeight.normal),
                   )
                 ],
               ),
               SizedBox(height: 3,),
               Row(
                 children: [
                   Text(
                     "66'",
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                     textAlign: TextAlign.center,
                     style:   TextStyle(
                         color:Colors.green,
                         fontSize: 12,
                         fontWeight: FontWeight.bold),
                   )
                 ],
               ),
             ],
           ),

           SizedBox(width: 5,),


           Expanded(child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
             Container(
               height: 25, width: 25,

               child:ClipRRect(
                 borderRadius: BorderRadius.circular(25), // Adjust the radius to control the rounding
                 child:FadeInImage.assetNetwork(
                   fit: BoxFit.fill,
                   placeholder: Assets.profileAvater,
                   image:"https://ssl.gstatic.com/onebox/media/sports/logos/paYnEE8hcrP96neHRNofhQ_96x96.png",
                   imageErrorBuilder: (context, url, error) =>
                       Image.asset(
                         Assets.profileAvater,
                         fit: BoxFit.fill,
                       ),
                 ),


               ),
             ),
           SizedBox(width: 3,),

           Expanded(child:   Text(
             "Abahani Limited Dhaka",
             maxLines: 3,
             overflow: TextOverflow.ellipsis,
             textAlign: TextAlign.left,
             style:   TextStyle(
                 color:Colors.white,
                 fontSize: 14,
                 fontWeight: FontWeight.w400),
           ))
           ],)),

           Icon(Icons.arrow_right,size: 18,color: Colors.white,)
         ],
       ),
     );
   }




}

