// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class Stack_Test extends StatelessWidget {
//   const Stack_Test({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Hello Stack"),
//         centerTitle: true,
//       ),
//       body: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Container(
//               decoration: const BoxDecoration(
//                   color: Colors.amber,
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(20.0),
//                     bottomRight: Radius.circular(20.0),
//                   )),
//               height: 200,
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Text(
//                     "Home",
//                     style: TextStyle(color: Colors.white, fontSize: 30),
//                   ),
//                   Text(
//                     "Setting",
//                     style: TextStyle(color: Colors.white, fontSize: 30),
//                   ),
//                   Text(
//                     "Profile",
//                     style: TextStyle(color: Colors.white, fontSize: 30),
//                   )
//                 ],
//               )),
//           Positioned(
//             left: 10,
//             right: 10,
//             height: 200,
//             bottom: -100,
//             child: Card(
//               elevation: 8.0,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
