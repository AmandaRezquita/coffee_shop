import 'package:coffee_shop/constant/mycolor.dart';
import 'package:coffee_shop/homepage/widget/coffee_list.dart';
import 'package:coffee_shop/homepage/widget/navBottom.dart';
import 'package:coffee_shop/homepage/widget/promo_card.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        extendBody: true,
        backgroundColor: CossColors.background,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, left: 30),
                    child: Text("Hello Manda!", style: TextStyle(
                      color: Colors.white54, fontSize: 16, fontWeight: FontWeight.w600
                    ),),
                  ),
                ],
              ),
              Container (
                width: 350,
                child: Padding(
                  padding: EdgeInsets.only(top: 8, left: 30),
                  child: Text("Discover coffee bliss, one click away", style: TextStyle(
                      color: Colors.white54, fontSize: 27, fontWeight: FontWeight.w600
                  ),),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CossColors.searchbar
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Find your coffee...",
                    prefixIcon: Icon(Icons.coffee, color: CossColors.hinttext, size: 20,),
                    hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: CossColors.hinttext),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: TabBar(
                  unselectedLabelColor: CossColors.hinttext,
                  dividerColor: CossColors.background,
                  tabAlignment: TabAlignment.start,
                  indicatorColor: CossColors.tapbar,
                  labelColor: CossColors.tapbar,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                  isScrollable: true,
                  tabs: [
                    Tab(text: 'Cappucino'),
                    Tab(text: 'Americano'),
                    Tab(text: 'Macchiato'),
                    Tab(text: 'Espresso'),
                    Tab(text: 'Espresso'),
                    Tab(text: 'Espresso'),
                  ],
                ),
              ),
              Container(
                height: 1010,
                child: TabBarView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 310,
                            child: CoffeeList()),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 10),
                          child: Text('Limited time offers', style: TextStyle(
                            color: Colors.white54, fontWeight: FontWeight.w600, fontSize: 18
                          ),),
                        ),
                        PromoCard()
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 310,
                            child: CoffeeList()),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 10),
                          child: Text('Limited time offers', style: TextStyle(
                              color: Colors.white54, fontWeight: FontWeight.w600, fontSize: 18
                          ),),
                        ),
                        PromoCard()
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 310,
                            child: CoffeeList()),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 10),
                          child: Text('Limited time offers', style: TextStyle(
                              color: Colors.white54, fontWeight: FontWeight.w600, fontSize: 18
                          ),),
                        ),
                        PromoCard()
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 310,
                            child: CoffeeList()),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 10),
                          child: Text('Limited time offers', style: TextStyle(
                              color: Colors.white54, fontWeight: FontWeight.w600, fontSize: 18
                          ),),
                        ),
                        PromoCard()
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 310,
                            child: CoffeeList()),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 10),
                          child: Text('Limited time offers', style: TextStyle(
                              color: Colors.white54, fontWeight: FontWeight.w600, fontSize: 18
                          ),),
                        ),
                        PromoCard()
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 310,
                            child: CoffeeList()),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, top: 10),
                          child: Text('Limited time offers', style: TextStyle(
                              color: Colors.white54, fontWeight: FontWeight.w600, fontSize: 18
                          ),),
                        ),
                        PromoCard()
                      ],
                    ),                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          width: 300,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: NavBottom(),
          ),
        ),
      ),
    );
  }
}
