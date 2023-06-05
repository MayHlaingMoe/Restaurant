// import 'package:flutter/material.dart';

// class Test_Grid extends StatelessWidget {
//   List<String> _list = List.generate(100, (index) => "Intem $index");
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Grid View"),
//         centerTitle: true,
//       ),
//       // body: GridView(
//       //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       //       crossAxisCount: 3,
//       //       crossAxisSpacing: 6.0,
//       //       mainAxisSpacing: 8.0,
//       //       childAspectRatio: 2 / 1),
//       //   children: [
//       //     Container(
//       //       color: Colors.red,
//       //     ),
//       //     Container(
//       //       color: Colors.green,
//       //     ),
//       //     Container(
//       //       color: Colors.blue,
//       //     ),
//       //     Container(
//       //       color: Colors.yellow,
//       //     ),
//       //     Container(
//       //       color: Colors.black,
//       //     ),
//       //     Container(
//       //       color: Colors.orange,
//       //     ),
//       //   ],
//       // ),

//       body: GridView.builder(
//           itemCount: _list.length,
//           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 100,
//             mainAxisSpacing: 8.0,
//             crossAxisSpacing: 8.0,
//           ), //based on screen sizes

//           // SliverGridDelegateWithFixedCrossAxisCount(
//           //     crossAxisCount: 3,
//           //mainAxisSpacing: 8.0,
//           //crossAxisSpacing: 8.0),  //default 3
//           itemBuilder: (context, index) {
//             return InkWell(
//               onTap: () {
//                 ScaffoldMessenger.of(context)
//                     .showSnackBar(SnackBar(content: Text(_list[index])));
//               },
//               child: Container(
//                 alignment: Alignment.center,
//                 color: Colors.amber,
//                 child: Text(_list[index]),
//               ),
//             );
//           }),
//     );
//   }
// }
