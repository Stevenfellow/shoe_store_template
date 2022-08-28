// ignore: file_names
import 'package:flutter/material.dart';

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
                          Icon(Icons.alarm, color: Colors.red[700]),
                          const Icon(Icons.person_outline,
                              color: Color(0xFF676E79)),
                        ],
                      )),

                  // ignore: sized_box_for_whitespace
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width / 2 - 20.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Icon(Icons.search, color: Color(0xFF676E79)),
                          Icon(Icons.shopping_basket, color: Color(0xFF676E79))
                        ],
                      )),
                ])));
  }
}
