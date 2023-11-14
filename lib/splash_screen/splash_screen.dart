import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foot_ball/splash_screen/splash_screen_page_controller.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constant/Colors.dart';



class SplashScreenPage extends StatelessWidget {

   final splashScreenPageController = Get.put(SplashScreenPageController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body:Container(
          decoration: const BoxDecoration(
            color:bgColor,
          ),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child:Container(
                        color: bgColor,
                        padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(child:

                            CustomScrollView(
                              slivers: [
                                SliverFillRemaining(
                                  hasScrollBody: false,
                                  child:  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [

                                      Expanded(child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [

                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              FaIcon(FontAwesomeIcons.baseball,size: 80,)
                                            ],
                                          ),
                                        ],
                                      ),)

                                    ],
                                  ),
                                ),
                              ],
                            )

                             ),
                            
                              Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [


                                Container(

                                  padding: EdgeInsets.only(
                                      left: 0,
                                      right: 0,
                                      top: 10),
                                  child:LinearPercentIndicator(
                                    // width: MediaQuery.of(context).size.width - 80,
                                    animation: true,
                                    lineHeight: 10.0,
                                    animationDuration: 1300,
                                    percent: 1.00,
                                    //  center: const Text("10%"),
                                    barRadius: const Radius.circular(2.5),
                                    fillColor:Colors.transparent,
                                    backgroundColor: dropDownBorderColor,
                                    progressColor: bijoyTechJobColor,
                                  ),
                                ),
                                const SizedBox(height: 20,),

                              ],
                            )
                          ],
                        )
                    )
                )
              ],
            ),
          )

      )
    );
  }

}

