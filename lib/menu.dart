import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pj2/Global/globalWidget.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});
  Column bottomWidget(String title, Icon icon) => Column(
        children: [Text(title), icon],
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
        appBar: AppBar(
          title: const Text("My House"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Text("Popular Menu"),
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    globalPopularWidget("images/pp.jpg"),
                    globalPopularWidget("images/kr.jpg"),
                    globalPopularWidget("images/k.jpg"),
                    globalPopularWidget("images/jj.jpg"),
                    globalPopularWidget("images/b.jpeg"),
                    globalPopularWidget("images/pp.jpg"),
                    globalPopularWidget("images/l.jpg"),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Europian & Chinese Foods"),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  globalFoodWidget(
                      context,
                      "https://blog.topdeck.travel/wp-content/uploads/2017/04/currywurst.jpg",
                      "Potato&Chicken\n20000ks"),
                  const SizedBox(
                    width: 10,
                  ),
                  globalFoodWidget(
                      context,
                      "https://www.marionskitchen.com/wp-content/uploads/2022/12/Filipino-Spaghetti-02.jpg",
                      "Spagetti\n 15000ks"),
                  const SizedBox(
                    width: 10,
                  ),
                  globalFoodWidget(
                      context,
                      "https://ik.imagekit.io/awwybhhmo/satellite_images/chinese/beyondmenu/hero/2.jpg?tr=w-3840,q-50",
                      "Fried Noodles\n 15000ks"),
                  const SizedBox(
                    width: 10,
                  ),
                  globalFoodWidget(
                      context,
                      "https://fedbysab.com/wp-content/uploads/2021/12/Spicy-Crispy-Chicken-Recipe-Easy-1.jpg",
                      "Spicy Chicken & Rice\n 15000ks"),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Korean Food"),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  globalFoodWidget(
                      context,
                      "https://www.thespruceeats.com/thmb/eFzxoZFO-ZWurv42gxrBveHYOf4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/classic-korean-bibimbap-recipe-2118765-step-011-acab906539594dc9a668c7fbb753c43d.jpg",
                      "Bibimbap\n10000ks"),
                  const SizedBox(
                    width: 10,
                  ),
                  globalFoodWidget(
                      context,
                      "https://c.ndtvimg.com/2022-05/7efvlvl_korean-rice-cakes_625x300_13_May_22.jpg?im=FaceCrop,algorithm=dnn,width=1200,height=675",
                      "Tteok-Bokki\n7500ks"),
                  const SizedBox(
                    width: 10,
                  ),
                  globalFoodWidget(
                      context,
                      "https://www.seriouseats.com/thmb/WtcBGMWbdUcAIVe8zg4VCm2aqc4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2020__01__20200122-gimbap-vicky-wasik-24-f5ed1075f35846a29e0812ee053a1bf8.jpg",
                      "Kimbap\n15000ks"),
                  const SizedBox(
                    width: 10,
                  ),
                  globalFoodWidget(
                      context,
                      "https://www.lecremedelacrumb.com/wp-content/uploads/2021/01/pork-lettuce-wraps-7sm-5.jpg",
                      "Fried Pork\n15000ks"),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                CarouselSlider(
                  items: [
                    Container(
                      // width: double.infinity,
                      height: 100,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        " All items Discount 20%",
                        style: TextStyle(color: Colors.red, fontSize: 20),
                      ),
                    ),
                    Container(
                      // width: double.infinity,
                      height: 100,
                      margin: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        "Show Old Coupons, Get 50% Off",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 100.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 2,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 1,
                  ),
                ),
              ]),
            ),
          ],
        ),
        bottomNavigationBar: bottomNavigationBarWidget(context));
  }
}
