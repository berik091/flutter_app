import 'package:flutter/material.dart';

class MyRowCloumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Верстка теория')),
      body: Container(
          color: Colors.grey,
          child: Row(
            mainAxisSize: MainAxisSize.max, //максимальная ширина
            mainAxisAlignment:
                MainAxisAlignment.center, // выровнивание по x осы
            crossAxisAlignment:
                CrossAxisAlignment.baseline, // выровнивание по y осы
            children: <Widget>[
              ColorBox(),
              BiggerColorBox(),
              ColorBox(),
            ],
          )),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blueAccent[400],
        border: Border.all(),
      ),
    );
  }
}
