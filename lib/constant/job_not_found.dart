import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Colors.dart';

Widget buildJobNotFound( ) {
  return  Container(
    color: Colors.white,
    child:LayoutBuilder(
      builder: (context, constraints) => ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: Center(
              child:Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/not_found.png",
                    width: 180,
                    height: 80,
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Job not found!",
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 1,
                    style: TextStyle(
                        color:textColor,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ) ,
  );
}

Widget buildNotFound(String text ) {
  return  Container(
    color: Colors.white,
    child:LayoutBuilder(
      builder: (context, constraints) => ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            constraints: BoxConstraints(
              minHeight: constraints.maxHeight,
            ),
            child: Center(
              child:Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/not_found.png",
                    width: 180,
                    height: 80,
                  ),
                  const SizedBox(height: 20,),
                    Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    maxLines: 1,
                    style: const TextStyle(
                        color:textColor,
                        fontSize: 15,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ) ,
  );
}