import 'dart:ui';

import 'package:coffee_shop/constant/mycolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NavBottom extends StatelessWidget {
  const NavBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      height: 80,
      child: Stack(
        children: <Widget>[
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
            child: Container(
              height: 60,
              width: 60,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40),
                  child: Icon(
                    Icons.coffee,
                    size: 30,
                    color: Colors.white70,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                          () ,
                    );
                  },
                  child: Container(
                    child: Icon(
                      Icons.receipt,
                      size: 30,
                      color: CossColors.hinttext,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                          (),
                    );
                  },
                  child: Container(
                    child: Icon(
                      Icons.notifications,
                      size: 32,
                      color: CossColors.hinttext,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                          (),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 40),
                    child: Icon(
                      Icons.person,
                      size: 36,
                      color: CossColors.hinttext,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
