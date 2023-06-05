import 'package:flutter/material.dart';
import 'package:pj2/Global/globalWidget.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  Padding title(String title) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      );

  Column bottomWidget(String title, Icon icon) => Column(
        children: [Text(title), icon],
      );

  Drawer drawerWidget(BuildContext context) => Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 21, 6, 0),
              ),
              child: Text('Hello,Ms Susan'),
            ),
            globalListWidget(context, const Icon(Icons.home), "Home"),
            globalListWidget(
                context, const Icon(Icons.menu_book), "My History Orders"),
            globalListWidget(context, const Icon(Icons.info), "My Information"),
            globalListWidget(context, const Icon(Icons.lock), "Log Out"),
          ],
        ),
      );

  Container bottomNavigationBarWidget(BuildContext context) => Container(
        height: 40,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomWidget(
              "Home",
              const Icon(Icons.home),
            ),
            bottomWidget(
              "Promotion",
              const Icon(Icons.card_giftcard),
            ),
            bottomWidget(
              "Menu",
              const Icon(Icons.menu_book),
            ),
            bottomWidget(
              "Profile",
              const Icon(Icons.person),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 212, 212),
        appBar: AppBar(),
        drawer: drawerWidget(context),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title("Good Food\nFast Delivery."),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                globalCategoryWidget(context, "Main", "images/m.png"),
                globalCategoryWidget(context, "Cold & Drink", "images/cii.png"),
                globalCategoryWidget(context, "Dessert", "images/di.png"),
                globalCategoryWidget(context, "Coffee", "images/co.png"),
              ],
            ),
            title("Popular Now"),
            SingleChildScrollView(
              child: Expanded(
                child: Row(
                  children: [
                    globalMenuWidget("images/kr.jpg", "Spicy chiken with rice",
                        "MMK:15000ks"),
                    globalMenuWidget(
                        "images/pp.jpg",
                        "Spicy Chicken Pizza\nwith bacon and red onion",
                        "MMK:15000ks"),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: bottomNavigationBarWidget(context));
  }
}
