import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Card(
      color: Colors.blue[200],
      elevation: 20,
      child: Image.network(
          "https://images.pexels.com/photos/5215017/pexels-photo-5215017.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
    ));
  }
}

// CustomCard(
//       title: "hello",
//       subtitle: "hi",
//       imageUrl:
//           "https://images.pexels.com/photos/5215017/pexels-photo-5215017.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
//     )