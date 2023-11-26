
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
class  NewsPageViewController extends GetxController with GetTickerProviderStateMixin{


  @override
  void onInit() {
    super.onInit();


  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();

  }
  Future<void> myUrlLaunch({required String url} ) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

}