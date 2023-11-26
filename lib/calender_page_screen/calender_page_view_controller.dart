
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
class  CalenderPageViewController extends GetxController with GetTickerProviderStateMixin{

  final controller = ScrollController().obs;
  var selectedIndex = 10.obs;
  var dateList = [].obs;
  @override
  void onInit() {
    super.onInit();
    dateList(generateDateList());

  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    scrollToMiddle( );
  }

  void scrollToMiddle( ) {

    double itemWidth = 150.0;
    double screenWidth = Get.width;
    double scrollTo = selectedIndex * itemWidth + (itemWidth / 2) - (screenWidth / 2);


     controller.value.animateTo(
      scrollTo,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );


  }

  List<String> generateDateList() {
    List<String> result = [];
    DateTime currentDate = DateTime.now();


    // Previous 10 days
    for (int i = 10; i > 0; i--) {
      DateTime previousDate = currentDate.subtract(Duration(days: i));
      String formattedDate = DateFormat('EEE MMM d, y').format(previousDate);
      result.add(formattedDate.toUpperCase());
    }
    // Add "Today" if currentDate is within the range
    // String todayFormatted = DateFormat('EEE MMM d, y').format(currentDate);
    // result.add('Today, $todayFormatted'.toUpperCase());
     result.add('Today');

    // Next 90 days
    for (int i = 1; i <= 90; i++) {
      DateTime nextDate = currentDate.add(Duration(days: i));
      String formattedDate = DateFormat('EEE MMM d, y').format(nextDate);
      result.add(formattedDate.toUpperCase());
    }

    return result;
  }

}