// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_full_hex_values_for_flutter_colors, avoid_print

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //image and logo
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 22, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(170),
                    bottomRight: Radius.circular(170)),
                child: Image.asset(
                  'images/background.png',
                  width: double.infinity,
                  height: 270,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Positioned(
              bottom: -50,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(19),
                      topRight: Radius.circular(19),
                      bottomLeft: Radius.circular(19),
                      bottomRight: Radius.circular(19)),
                  boxShadow: [
                    BoxShadow(
                      color:
                          Color.fromARGB(255, 196, 196, 196).withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 8,
                      offset: Offset(0, 23), // changes position of shadow
                    ),
                  ],
                ),
                height: 150,
                width: 150,
                child: Image.asset("images/logo_mark.png"),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        //middle title
        Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(

              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(height: 12),
                Text(
                  "Carbonery",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text("Find green brands all in one place"),
              ]),
        ),
        //facebook button
        GestureDetector(
          onTap: () {
            print("from facebook");
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 12, 22, 10),
            child: Container(
              width: double.infinity,
              // height: 0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 3, 80, 118),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.facebook_outlined,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        'Continue with Facebook',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        //google button
        GestureDetector(
          onTap: () {
            print("from Google");
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
            child: Container(
              width: double.infinity,
              // height: 0,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color.fromARGB(31, 105, 105, 105)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.gamepad,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        'Continue with Google',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        //apple button
        GestureDetector(
          onTap: () {
            print("from apple");
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
            child: Container(
              width: double.infinity,
              // height: 0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 38, 37, 37),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.apple,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        'Continue with Apple',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            print("from email");
          },
          child: Text(
            "Or use Email",
            style: TextStyle(
                color: Colors.lightGreen, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
