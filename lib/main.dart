import 'package:flutter/material.dart';

import 'package:rmdb_app/cards.dart';
import 'package:rmdb_app/models/movie.dart';
import 'package:rmdb_app/models/mock.dart';
import 'package:rmdb_app/recommendations.dart';

void main() => runApp(MyApp());

final RecommendationEngine recommendationEngine = RecommendationEngine(
  recommendations: mockMovies().map((Movie movie) {
    return MovieRecommendation(movie: movie);
  }).toList(),
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorBrightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(
          Icons.person,
          color: Colors.grey,
          size: 40.0,
        ),
        onPressed: () {},
      ),
      title: Center(
        child: FlutterLogo(
          size: 30.0,
          colors: Colors.red,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
            size: 40.0,
          ),
          onPressed: () {
            // TODO(olivoil): nothing
          },
        ),
      ],
    );
  }

  Widget _buildBottomBar() {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RoundIconButton.small(
                icon: Icons.refresh,
                iconColor: Colors.orange,
                onPressed: () {
                  // TODO(olivoil): undo last decision
                }),
            RoundIconButton.large(
                icon: Icons.thumb_down,
                iconColor: Colors.red,
                onPressed: () {
                  recommendationEngine.currentMovieRecommendation.dislike();
                }),
            RoundIconButton.small(
                icon: Icons.watch_later,
                iconColor: Colors.blue,
                onPressed: () {
                  recommendationEngine.currentMovieRecommendation.watchLater();
                }),
            RoundIconButton.large(
                icon: Icons.favorite,
                iconColor: Colors.green,
                onPressed: () {
                  recommendationEngine.currentMovieRecommendation.like();
                }),
            RoundIconButton.small(
                icon: Icons.rate_review,
                iconColor: Colors.purple,
                onPressed: () {
                  // TODO(olivoil): leave a detailed review
                }),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: CardStack(
        engine: recommendationEngine,
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.iconColor, this.size, this.onPressed});

  RoundIconButton.large({this.icon, this.iconColor, this.onPressed})
      : size = 60.0;

  RoundIconButton.small({this.icon, this.iconColor, this.onPressed})
      : size = 50.0;

  final IconData icon;
  final Color iconColor;
  final double size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0x11000000),
              blurRadius: 10.0,
            )
          ],
        ),
        child: RawMaterialButton(
          shape: CircleBorder(),
          elevation: 0.0,
          child: Icon(
            icon,
            color: iconColor,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
