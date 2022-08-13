// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_ui_apk/util/catagory_card.dart';
import 'package:medical_ui_apk/util/doctor_card.dart';

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

              const SizedBox(height: 15),

              // card-> How do you feel

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      //animation or picture
                      Container(
                        height: 120,
                        child: Lottie.network(
                            "https://assets9.lottiefiles.com/packages/lf20_tutvdkg0.json"),
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

              const SizedBox(height: 15),

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

              const SizedBox(height: 15),

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
                      catagoryname: 'Surgeon ',
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

              // free size

              const SizedBox(height: 15),

              //doctor list
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Doctor List",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),

              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DoctorCard(
                      doctorProfilePath: "lib/images/doctor1.jpg",
                      rating: "4.9",
                      doctorName: "Dr Yunus Ali",
                      doctorProfession: "Treats specialist 5 y.e.",
                    ),
                    DoctorCard(
                      doctorProfilePath: "lib/images/doctor3.jpg",
                      rating: "4.9",
                      doctorName: "Dr Yunus Ali",
                      doctorProfession: "Treats specialist 5 y.e.",
                    ),
                    DoctorCard(
                      doctorProfilePath: "lib/images/doctor2.jpg",
                      rating: "4.9",
                      doctorName: "Dr Yunus Ali MOlla",
                      doctorProfession: "Treats specialist 5 y.e.",
                    ),
                    DoctorCard(
                      doctorProfilePath: "lib/images/doctor4.jpg",
                      rating: "4.9",
                      doctorName: "Dr Yunus Ali MOlla",
                      doctorProfession: "Treats specialist 5 y.e.",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          backgroundColor: Colors.grey.shade200,
          color: Colors.deepPurple.shade100,
          animationDuration: Duration(milliseconds: 200),
          items: const [
            Icon(
              Icons.home,
              color: Color.fromARGB(255, 58, 56, 56),
              size: 25,
            ),
            Icon(
              Icons.message,
              color: Color.fromARGB(255, 58, 56, 56),
              size: 25,
            ),
            Icon(
              Icons.settings,
              color: Color.fromARGB(255, 58, 56, 56),
              size: 25,
            ),
          ],
        ));
  }
}
