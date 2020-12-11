import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Simple App',
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home: PersonWidget());
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int _favoriteCount = 2050;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: IconButton(
            icon: (_isFavorite
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            onPressed: _toggleFavorite,
            color: Colors.red[500],
          ),
        ),
        SizedBox(
          width: 40,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        )
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        _favoriteCount -= 1;
      } else {
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Сакура (さくら)'),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    child: _buildRatind(),
                    margin: const EdgeInsets.all(5),
                  ),
                  Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(5),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: _buildAction(),
                    ),
                  ),
                  Container(
                    child: _buildDesc(),
                    margin: const EdgeInsets.all(5),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Widget _buildTopImage() => Container(
        child: Card(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          elevation: 5,
          child: Image.asset(
            'assets/images/girl1.png',
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _buildRatind() => ListTile(
        title: Text(
          "Анимешка",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text('Japaness, school'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[FavoriteWidget()],
        ),
      );

  Widget _buildAction() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildButton('Старшая школа', Icons.star, Colors.black),
          _buildButton('Рост 168 см', Icons.radio_button_checked, Colors.black),
          _buildButton('Возраст 18', Icons.school, Colors.black),
        ],
      );

  Widget _buildButton(String label, IconData icon, Color color) => Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
          ),
          Container(
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.w400, color: color),
            ),
          ),
        ],
      );

  Widget _buildDesc() => Text(
        'Аниме ср., нескл., яп. アニメ [anʲime], от англ. animation — анимация) — японская анимация. В отличие от мультфильмов других стран, предназначенных в основном для просмотра детьми, бо́льшая часть выпускаемого аниме рассчитана на подростковую и взрослую аудитории, и во многом за счёт этого имеет высокую популярность в мире. Аниме отличается характерной манерой отрисовки персонажей и фонов.',
        softWrap: true,
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      );
}
