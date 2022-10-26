// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UseDetails extends StatefulWidget {
  const UseDetails({super.key});

  @override
  State<UseDetails> createState() => _UseDetailsState();
}

class _UseDetailsState extends State<UseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black45,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "PickUp",
          style: TextStyle(
              color: Colors.black, fontFamily: "Varela", fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.red[700],
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: 8,
          ),
          IconButton(
            icon: Icon(
              Icons.person_off,
              color: Colors.red[700],
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: 8,
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.red[700],
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: const [
                  Text("Welcome,"),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Name here')
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('My Account'),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.add_box),
                      ],
                    ),
                    Row(),
                    Row(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
