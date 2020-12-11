import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter one love & dart')),
      body: Container(
          color: Colors.grey,
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround, // выровнивание по x осы
            children: <Widget>[
              Container(
                color: Colors.red[400],
                width: 100,
                child: Text(
                  'Dart!',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(
                Icons.favorite,
                size: 50,
                color: Colors.amber[500],
              ),

              // BiggerColorBox(),
              // Flexible(fit: FlexFit.loose, child: ColorBox()),
              // Flexible(fit: FlexFit.loose, child: ColorBox()),
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
      child: Text("12356465"),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green[400],
        border: Border.all(),
      ),
    );
  }
}
