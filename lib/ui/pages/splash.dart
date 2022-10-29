// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors
import 'package:flutter/material.dart';

class Spalsh extends StatefulWidget {
  const Spalsh({super.key});

  @override
  State<Spalsh> createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            // ignore: prefer_const_literals_to_create_immutables
            child: Column(mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(19),
                          topRight: Radius.circular(19),
                          bottomLeft: Radius.circular(19),
                          bottomRight: Radius.circular(19)
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 196, 196, 196)
                              .withOpacity(0.1),
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
        ),
        Container(
          height: 350,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/background.png"),
                  fit: BoxFit.fitWidth)),
        ),
      ],
    );
  }
}
