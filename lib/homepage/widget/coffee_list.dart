import 'package:coffee_shop/constant/mycolor.dart';
import 'package:coffee_shop/homepage/homepage_controller.dart';
import 'package:coffee_shop/homepage/widget/promo_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoffeeList extends StatelessWidget {
  final HomePageController homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageController>(
      builder: (controller) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.coffeelist.length,
          itemBuilder: (context, index) {
            final coffee = controller.coffeelist[index];
            return Padding(
              padding: EdgeInsets.only(
                top: 15,
                left: index == 0 ? 25 : 15,
              ),
              child: InkWell(
                onTap: () {
                  Get.to(());
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                  height: 280,
                  width: 180,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        CossColors.card1,
                        CossColors.card2.withOpacity(0.56),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(0, 6),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 140,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                coffee["image"]!,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          coffee["Judul"]!,
                          style: TextStyle(
                              fontSize: 14,
                              color: CossColors.judul,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Text(
                          coffee["Desc"]!,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white24,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: Text(
                              '\$${coffee["harga"]!}',
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Container(
                            height: 29,
                            width: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              gradient: LinearGradient(
                                colors: [
                                  CossColors.orange2,
                                  CossColors.tapbar,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: Icon(
                              Icons.add_rounded,
                              color: Colors.white70,
                              size: 15,
                              weight: 1,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
