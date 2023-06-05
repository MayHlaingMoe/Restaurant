import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<bool> checked = [false, true, false, true];
  List<String> items = ["Bacon", "Chicken", "Cherry Tomota", "Red Onion"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My House"),
      ),
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Image.asset(
              "images/h.jpg",
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 115.0),
          padding: const EdgeInsets.only(top: 5.0, left: 4.0, right: 4.0),
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("images/pp.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                            "Price : 150000ks",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(10, 10),
                                ),
                                child: const Text("+"),
                              ),
                              const Text("0"),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(10, 10),
                                ),
                                child: const Text("-"),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Spicy Chicken Pizza",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.favorite))
                        ],
                      ),
                    ],
                  ),
                  const Text(
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      "Spread spicy pizza sauce on the dough. Top with mozzarella, chicken, and bacon.Scatter spinach, cherry tomatoes, and red onion on top."),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Extra items",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Column(
                    children: [
                      for (int i = 0; i < checked.length; i++)
                        _myCheckBox(checked[i], items[i])
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(),
                    child: const Text("Add to Card"),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _myCheckBox(bool check, String items) {
    return Row(
      children: [
        Checkbox(value: check, onChanged: (val) {}),
        Text(
          items,
          style: const TextStyle(fontSize: 10, color: Colors.black),
        )
      ],
    );
  }
}
