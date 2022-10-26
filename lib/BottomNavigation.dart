// ignore: file_names
import 'package:flutter/material.dart';
import 'package:shoe_store/Account_details.dart';

class CookingNavigator extends StatelessWidget {
  const CookingNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 60.0,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: Colors.white),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: sized_box_for_whitespace
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width / 2 - 20.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          IconButton(
                              onPressed: (() {}),
                              icon: const Icon(Icons.alarm, color: Colors.red)),
                          IconButton(
                              onPressed: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const UseDetails())));
                              }),
                              icon: const Icon(Icons.person_outline,
                                  color: Colors.red))
                        ],
                      )),

                  // ignore: sized_box_for_whitespace
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width / 2 - 20.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Icon(Icons.search, color: Colors.red),
                          Icon(Icons.shopping_basket, color: Colors.red)
                        ],
                      )),
                ])));
  }
}
