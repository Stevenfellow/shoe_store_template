// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'BottomNavigation.dart';
import 'ItemsList.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
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
                color: Color(0xff515c6f), fontFamily: "Varela", fontSize: 20),
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
              height: 150,
              color: Colors.white,
              child: ListView(
                padding: const EdgeInsets.only(left: 20),
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Categories",
                    style: TextStyle(fontFamily: "Varela", fontSize: 42),
                  ),
                  const SizedBox(
                    height: 20,
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
              height: 290,
              child: TabBarView(controller: _tabController, children: [
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
      ),
    );
  }
}

class CookiesMasters extends StatefulWidget {
  const CookiesMasters({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CookiesMastersState createState() => _CookiesMastersState();
}

class _CookiesMastersState extends State<CookiesMasters> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
    );
  }
}
