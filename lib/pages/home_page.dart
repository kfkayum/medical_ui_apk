// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medical_ui_apk/util/catagory_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Hello ,",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        "Jerome Bell",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            letterSpacing: 1),
                      ),
                    ],
                  ),

                  // profile picture
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),

            // free size

            const SizedBox(
              height: 25,
            ),

            // card-> How do you feel

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    //animation or picture
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple[200],
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    //how do you feel & get start button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'How do you feel?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Fill our your medical card right now",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Expanded(child: Container()),
                              Container(
                                alignment: Alignment.centerRight,
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple[200],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Text(
                                  "Get Started",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // free size

            const SizedBox(
              height: 25,
            ),

            //search bar

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: "how can we help you?",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),

            // free size

            const SizedBox(
              height: 25,
            ),

            //catagory list-> Dentist,Surgeon etc...

            Container(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CatagoryCard(
                    iconPath: 'lib/icons/1.png',
                    catagoryname: 'Dentist',
                  ),
                  CatagoryCard(
                    iconPath: 'lib/icons/2.png',
                    catagoryname: 'Surgeon',
                  ),
                  CatagoryCard(
                    iconPath: 'lib/icons/3.png',
                    catagoryname: 'Pharmacist',
                  ),
                  CatagoryCard(
                    iconPath: 'lib/icons/4.png',
                    catagoryname: 'Medicine',
                  ),
                ],
              ),
            ),

            //doctor list
          ],
        ),
      ),
    );
  }
}
