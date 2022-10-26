import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'BottomNavigation.dart';
import 'ItemsList.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black45,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          "PickUp",
          style: TextStyle(
              color: Colors.black, fontFamily: "Varela", fontSize: 20),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.red[700],
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 120,
            color: Colors.white,
            child: ListView(
              padding: const EdgeInsets.only(left: 20),
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Categories",
                  style: TextStyle(fontFamily: "Varela", fontSize: 42),
                ),
                const SizedBox(
                  height: 5,
                ),
                TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  labelColor: Colors.red[700],
                  unselectedLabelColor: const Color(0xff515c6f),
                  labelPadding: const EdgeInsets.only(right: 45),
                  tabs: const <Widget>[
                    Tab(
                      child: Text(
                        "Toppers",
                        style: TextStyle(fontFamily: "Varela", fontSize: 21),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Runners",
                        style: TextStyle(fontFamily: "Varela", fontSize: 21),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Skippers",
                        style: TextStyle(fontFamily: "Varela", fontSize: 21),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            height: 310,
            child: TabBarView(controller: _tabController, children: const [
              ItemsList(),
              ItemsList(),
              ItemsList(),
            ]),
          ), //CookieItems(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[700], //olor(0xFFf17422),
        child: const Icon(Icons.add_shopping_cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CookingNavigator(),
    );
  }
}
