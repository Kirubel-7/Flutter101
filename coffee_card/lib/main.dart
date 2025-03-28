// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Coffee Menu'),
//         backgroundColor: Colors.brown[700],
//         centerTitle: true,
//       ),
//       // body: const Text('Coffee Menu Items'),
//       body: const Home(),
//     ),
//   ));
// }

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.orange,
//       // width: 200,
//       // height: 100,
//       padding: const EdgeInsets.all(20),
//       child: const Text('Hello , ninjas'),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'shipping_info_widget.dart'; // Import the Shipping Info widget

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('Shipping Info'),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: ShippingInfoWidget(), // Replace Home() with ShippingInfoWidget
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.all(20),
      child: Text('Hello, ninjas'),
    );
  }
}
