import 'package:flutter/material.dart';

import '../../constant/mycolor.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      height: 600,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 100,
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        CossColors.card3,
                        CossColors.card4,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(0, 6),
                        blurRadius: 6,
                      ),
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    width: 180,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "30% off",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CossColors.tapbar,
                            ),
                          ),
                          TextSpan(
                            text: " all coffee varieties today! Grab your cup now",
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      height: 135,
                      width: 140,
                      child: Image(
                        image: AssetImage("assets/images/coffee.png"),
                        fit: BoxFit.cover,
                      ))
                ],
              )
            ],
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 100,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        CossColors.card3,
                        CossColors.card4,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(0, 6),
                        blurRadius: 6,
                      ),
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 140,
                      width: 140,
                      child: Image(
                        image: AssetImage("assets/images/milkshake.png"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 200,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Indulge in creamy milkshakes  ",
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          TextSpan(
                            text: "20% off",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: CossColors.tapbar,
                            ),
                          ),
                          TextSpan(
                            text: " for a limited time!",
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 100,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        CossColors.card3,
                        CossColors.card4,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(0, 6),
                        blurRadius: 6,
                      ),
                    ]),
              ),
              Positioned(
                bottom: 1, top: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 10),
                      width: 200,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Snack time special! Save  ",
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                            TextSpan(
                              text: "15% off",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: CossColors.tapbar,
                              ),
                            ),
                            TextSpan(
                              text: " on all delicious snacks today",
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        height: 150,
                        width: 130,
                        child: Image(
                          image: AssetImage("assets/images/donnuts.png"),
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
