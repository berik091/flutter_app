import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dart one love & flutter'),
      ),
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.network(
                      'https://assets.puzzlefactory.pl/puzzle/248/565/original.jpg')
                  .image,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(90)),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Контайнер Теория'),
  //     ),
  //     body: Center(
  //       child: Container(
  //         decoration: BoxDecoration(
  //             // shape: BoxShape.circle,
  //             border: Border.all(),
  //             color: Colors.amber[600]),
  //         child: Text('Dart one love'),
  //         alignment: Alignment.center,
  //         // width: 300,
  //         // height: 300,
  //         margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
  //         padding: const EdgeInsets.all(0.0),
  //       ),
  //     ),
  //   );
  // }
}
