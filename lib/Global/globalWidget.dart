// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pj2/detail.dart';
import 'package:pj2/menu.dart';

Widget globalCategoryWidget(BuildContext context, String name, String img) {
  return Column(
    children: [
      Container(
        width: 50,
        height: 50,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
        ),
      ),
      TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Menu()));
          },
          child: Text(name))
    ],
  );
}

Widget globalMenuWidget(String img, String name, String price) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(left: 10.0, top: 50),
        width: 180,
        height: 200,
      ),
      Positioned(
        top: -20,
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(
                left: 15.0,
                top: 30.0,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(name,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {},
                      child: const Text("view",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold)))
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget globalListWidget(BuildContext context, Icon icon, String list) {
  return ListTile(
    leading: icon,
    title: Text(list),
    onTap: () {
      Navigator.pop(context);
    },
  );
}

Widget globalFoodWidget(BuildContext context, String img, String name) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: NetworkImage(img), fit: BoxFit.fill),
            ),
          ),
          Positioned(
            width: 100,
            top: 75,
            child: Container(
              color: Colors.brown[200],
              child: Text(name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Detail()));
        },
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(8, 20),
        ),
        child: const Text("View", style: TextStyle(fontSize: 8)),
      )
    ],
  );
}

Widget globalPopularWidget(String img) {
  return Container(
    // margin: EdgeInsets.all(20),
    width: 50,
    height: 100,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
    ),
  );
}
