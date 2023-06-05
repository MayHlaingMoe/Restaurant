import 'package:flutter/material.dart';
import 'package:pj2/home.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My House"),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              "images/ba.jpg",
            ),
          ),
        ),
        floatingActionButton: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHome()));
          },
          icon: const Icon(
            Icons.arrow_circle_right,
            color: Colors.blue,
          ),
          iconSize: 50,
        ));
  }
}
