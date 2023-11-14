import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foot_ball/splash_screen/splash_screen_page_controller.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constant/Colors.dart';
import '../utils/assets.dart';
import 'home_page_view_controller.dart';



class HomePageView extends StatelessWidget {

   final pageController = Get.put(HomePageViewController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Container(
              decoration: const BoxDecoration(
                color:Colors.black,
              ),
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(children: [
                      Expanded(child: TabBar(
                        tabs: [
                          Tab(text: 'Home',),
                          Tab(text: 'Live',),
                          Tab(text: 'Today',),
                        ],
                        indicatorWeight: 4,

                        onTap: (value){

                          print("ontap= $value");


                        },
                      ),  )
                    ],),

                    Expanded(child:  TabBarView(
                      children: [

                        ///Home section
                        Column(
                          children: [
                            Expanded(
                                child:ListView.builder(
                                    padding: EdgeInsets.only(bottom: 20 ,top: 15 ),
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return categoryItem( );
                                    })),
                          ],
                        ),

                        ///Live section
                        Column(
                          children: [
                            Expanded(
                                child:ListView.builder(
                                    padding: EdgeInsets.only(bottom: 20 ,top: 15 ),
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return categoryItemLive( );
                                    })),
                          ],
                        ),

                        ///Today section
                        Column(
                          children: [
                            Expanded(
                                child:ListView.builder(
                                    padding: EdgeInsets.only(bottom: 20 ,top: 15 ),
                                    itemCount: 5,
                                    itemBuilder: (BuildContext context, int index) {
                                      return categoryItemToday( );
                                    })),
                          ],
                        ),

                      ],
                    ),),

                  ],
                ),
              )

          ),
        ),
      )
    );
  }



   Widget categoryItem( ) {
     return Column(
       children: [

         Row(
           children: [
             Expanded(child: Container(
                 color: Colors.white.withOpacity(0.15),
                 padding:   EdgeInsets.only(left: 10,top: 8,bottom: 8 ),
                 child: Text("FAVOURITE COMPETETION",
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: 18 ,
                       decoration: TextDecoration.none,
                       fontWeight: FontWeight.normal),
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
   Widget categoryItemLive( ) {
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
               return categoryListItemLive();
             })


       ],
     );




   }
   Widget categoryItemToday( ) {
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
                         image:"https://www.nationalflags.shop/WebRoot/vilkasfi01/Shops/2014080403/53E6/2F4A/7E7A/8607/88F4/0A28/100B/04DA/Flag_of_Aland_m.png",
                         imageErrorBuilder: (context, url, error) =>
                             Image.asset(
                               Assets.profileAvater,
                               fit: BoxFit.fill,
                             ),
                       ),
                     ),
                     Text("EUROPIAN PREMIER LEAGUE",
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
               return categoryListItemToday();
             })


       ],
     );




   }




   ///TODO: list view item
   Widget categoryListItem( ){
     return  Container(
       padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
       child: Row(
         children: [
           Expanded(child:  Row(
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

               Align(
                 alignment: Alignment.centerLeft,
                 child: Text(
                   "Premier League",
                   textAlign: TextAlign.left,
                   style:   TextStyle(
                       color:Colors.white,
                       fontSize: 15,
                       fontWeight: FontWeight.w500),
                 ),
               ),
             ],
           )),
           Icon(Icons.arrow_right,size: 25,color: Colors.white,)
         ],
       ),
     );
   }
   Widget categoryListItemLive( ){
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
   Widget categoryListItemToday( ){
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
                 "Al Naser",
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
                     image:"https://ssl.gstatic.com/onebox/media/sports/logos/GWXetBOkODOWR3p2NIBqJg_96x96.png",
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
                     "6:30Pm",
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
                     image:"https://ssl.gstatic.com/onebox/media/sports/logos/Th4fAVAZeCJWRcKoLW7koA_96x96.png",
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
                 "Real Madrid",
                 maxLines: 3,
                 overflow: TextOverflow.ellipsis,
                 textAlign: TextAlign.left,
                 style:   TextStyle(
                     color:Colors.white,
                     fontSize: 14,
                     fontWeight: FontWeight.w400),
               ))
             ],)),

           Icon(Icons.arrow_right,size: 22,color: Colors.white,)
         ],
       ),
     );
   }



}

