import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foot_ball/splash_screen/splash_screen_page_controller.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constant/Colors.dart';
import '../utils/assets.dart';
import 'today_games_details_page_view_controller.dart';



class TodayGamesDetailsPageView extends StatelessWidget {

   final pageController = Get.put(TodayGamesDetailsPageViewController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:SafeArea(
        child: Container(
            decoration: const BoxDecoration(
              color:Colors.black,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                teamFlagSection( ),

                Row(children: [
                  Expanded(child: leageInfoSection())
                ],),
                SizedBox(height: 10,),

                Row(children: [
                  Expanded(child: headToHeadInfoSection())
                ],),

                SizedBox(height: 10,),
                Row(children: [
                  Expanded(child: fromInfoSection())
                ],)

              ],
            )

        ),
      )
    );
  }











   Widget teamFlagSection( ){
     return  Container(
       padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
       child: Row(
         children: [


           Expanded(child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                 height: 70, width: 70,

                 child:ClipRRect(
                   borderRadius: BorderRadius.circular(40),
                   // Adjust the radius to control the rounding
                   child:Container(
                     padding: EdgeInsets.all(10),
                     color: Colors.white,
                     child: FadeInImage.assetNetwork(
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
               ),
               SizedBox(height: 10,),

               Row(children: [
                 Expanded(child: Text(
                   "Abahani Limited",
                   maxLines: 3,
                   overflow: TextOverflow.ellipsis,
                   textAlign: TextAlign.center,
                   style:   TextStyle(
                       color:Colors.white,
                       fontSize: 15,
                       fontWeight: FontWeight.w400),
                 ))
               ],)
             ],)),




           Expanded(child: Column(
             children: [
               Row(
                 children: [
                  Expanded(child:  Text(
                    "11/23/23",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style:   TextStyle(
                        color:Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ))
                 ],
               ),
               SizedBox(height: 3,),
               Row(
                 children: [
                   Expanded(child: Text(
                     "9:00PM",
                     maxLines: 1,
                     overflow: TextOverflow.ellipsis,
                     textAlign: TextAlign.center,
                     style:   TextStyle(
                         color:Colors.white,
                         fontSize: 16,
                         fontWeight: FontWeight.bold),
                   ))
                 ],
               ),
             ],
           ),),





           Expanded(child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
             Container(
               height: 70, width: 70,

               child:ClipRRect(
                 borderRadius: BorderRadius.circular(40),
                 // Adjust the radius to control the rounding
                 child:Container(
                   padding: EdgeInsets.all(10),
                   color: Colors.white,
                   child: FadeInImage.assetNetwork(
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
             ),
           SizedBox(height: 10,),

           Row(children: [
             Expanded(child: Text(
               "Abahani Limited",
               maxLines: 3,
               overflow: TextOverflow.ellipsis,
               textAlign: TextAlign.center,
               style:   TextStyle(
                   color:Colors.white,
                   fontSize: 15,
                   fontWeight: FontWeight.w400),
             ))
           ],)
           ],)),


         ],
       ),
     );
   }
   Widget leageInfoSection( ){
     return  Row(
       children: [
         Expanded(child: Container(

           margin: EdgeInsets.only(left: 10,right: 10),
             decoration: BoxDecoration(
                 color: Colors.white.withOpacity(0.15),
               borderRadius: BorderRadius.circular(5)
             ),
             padding:   EdgeInsets.only(left: 10,top: 8,bottom: 8 ),
             child:  Column(
               children: [
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       height: 20, width: 28,
                       margin:EdgeInsets.only(left: 0,right: 10),
                       child:FadeInImage.assetNetwork(
                         fit: BoxFit.fill,
                         placeholder: Assets.profileAvater,
                         image:"https://media.istockphoto.com/id/525982638/vector/palestine-flag.jpg?s=612x612&w=0&k=20&c=agfJtXme3_SCpGTqRaOk7yQQHptpZ4aiV6Rt4l6pigg=",
                         imageErrorBuilder: (context, url, error) =>
                             Image.asset(
                               Assets.profileAvater,
                               fit: BoxFit.fill,
                             ),
                       ),
                     ),
                     Text(
                       "Premier League",
                       textAlign: TextAlign.center,
                       style:   TextStyle(
                           color:Colors.white,
                           fontSize: 15,
                           fontWeight: FontWeight.w500),
                     )
                   ],
                 ),
                 SizedBox(height: 5,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Text(
                       "Round 7",
                       textAlign: TextAlign.center,
                       style:   TextStyle(
                           color:Colors.white,
                           fontSize: 14,
                           fontWeight: FontWeight.normal),
                     )
                   ],
                 )
               ],
             )
         ),),
       ],
     );
   }

   Widget headToHeadInfoSection( ){
     return  Row(
       children: [
         Expanded(child: Container(

             margin: EdgeInsets.only(left: 10,right: 10),
             decoration: BoxDecoration(
                 color: Colors.white.withOpacity(0.15),
                 borderRadius: BorderRadius.circular(5)
             ),
             padding:   EdgeInsets.only(left: 3,top: 8,bottom: 8,right: 3 ),
             child:  Column(
               children: [
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Text(
                       "Vote",
                       textAlign: TextAlign.center,
                       style:   TextStyle(
                           color:Colors.white,
                           fontSize: 16,
                           fontWeight: FontWeight.normal),
                     )
                   ],
                 ),
                 SizedBox(height: 15,),
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(child: Column(children: [
                      Row(children: [
                        Expanded(child:  Container(

                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
                          child: Text(
                            "Barcelona",
                            textAlign: TextAlign.center,
                            style:TextStyle(
                                color:Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ),)
                      ],),
                       SizedBox(height: 7,),
                       Text(
                         "1 Votes",
                         textAlign: TextAlign.center,
                         style:   TextStyle(
                             color:Colors.white,
                             fontSize: 14,
                             fontWeight: FontWeight.w500),
                       )
                     ],)),
                     SizedBox(width: 10,),
                     Expanded(child: Column(children: [
                       Row(children: [
                         Expanded(child:  Container(

                           decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(5)
                           ),
                           padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
                           child: Text(
                             "Draw",
                             textAlign: TextAlign.center,
                             style:   TextStyle(
                                 color:Colors.white,
                                 fontSize: 14,
                                 fontWeight: FontWeight.normal),
                           ),
                         ),)
                       ],),
                       SizedBox(height: 7,),
                       Text(
                         "1 Votes",
                         textAlign: TextAlign.center,
                         style:   TextStyle(
                             color:Colors.white,
                             fontSize: 14,
                             fontWeight: FontWeight.w500),
                       )
                     ],)),
                     SizedBox(width: 10,),
                     Expanded(child: Column(children: [
                       Row(children: [
                         Expanded(child:  Container(

                           decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(5)
                           ),

                           padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
                           child: Text(
                             "Real Madrid",
                             textAlign: TextAlign.center,
                             style:   TextStyle(
                                 color:Colors.white,
                                 fontSize: 14,
                                 fontWeight: FontWeight.normal),
                           ),
                         ),)
                       ],),
                       SizedBox(height: 7,),
                       Text(
                         "1 Votes",
                         textAlign: TextAlign.center,
                         style:   TextStyle(
                             color:Colors.white,
                             fontSize: 14,
                             fontWeight: FontWeight.w500),
                       )
                     ],)),


                   ],
                 ),

               ],
             )
         ),),
       ],
     );
   }

   Widget fromInfoSection( ){
     return  Row(
       children: [
         Expanded(child: Container(

             margin: EdgeInsets.only(left: 10,right: 10,bottom:0),
             decoration: BoxDecoration(
                 color: Colors.white.withOpacity(0.15),
                 borderRadius: BorderRadius.circular(5)
             ),
             padding:   EdgeInsets.only(left: 3,top: 8,bottom: 10,right: 3 ),
             child:  Column(
               children: [
                 Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Text(
                       "From",
                       textAlign: TextAlign.center,
                       style:   TextStyle(
                           color:Colors.white,
                           fontSize: 16,
                           fontWeight: FontWeight.normal),
                     )
                   ],
                 ),
                 SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(child:  Row(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(width: 2,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(width: 2,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(width: 2,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(width: 2,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),

                      ],
                    ),),
                    Expanded(child:  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(width: 2,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(width: 2,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(width: 2,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        SizedBox(width: 2,),
                        Container(

                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                          child: Text(
                            "D",
                            textAlign: TextAlign.center,
                            style:   TextStyle(
                                color:Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal),
                          ),
                        ),

                      ],
                    ),),
                  ],
                )





               ],
             )
         ),),
       ],
     );
   }

}

