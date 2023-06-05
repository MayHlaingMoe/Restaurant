// import 'package:flutter/material.dart';

// class TestContact extends StatelessWidget {
//   List<Contact> _list = List.generate(100, (index) {
//     return Contact(
//         name: "Name $index", phone: "Phone $index", address: "Address $index");
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Contact List View"),
//         centerTitle: true,
//       ),
//       body: ListView.builder(itemBuilder: (BuildContext context, int index) {
//         return Card(
//           child: ListTile(
//             leading: Icon(Icons.phone),
//             title: Text(_list[index].name!),
//             subtitle: Text(_list[index].phone!),
//             trailing: Text(_list[index].address!),
//           ),
//         );
//       }),
//     );
//   }
// }

// class Contact {
//   final String? name;
//   final String? phone;
//   final String? address;

//   Contact({this.name, this.phone, this.address});
// }
