import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rmdb_app/layout_overlays.dart';
import 'package:transparent_image/transparent_image.dart';

void main() => runApp(MyApp());

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
            Icons.chat_bubble,
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
                icon: Icons.people,
                iconColor: Colors.orange,
                onPressed: () {
                  // TODO(olivoil): skip movie
                }),
            RoundIconButton.large(
                icon: Icons.thumb_down,
                iconColor: Colors.red,
                onPressed: () {
                  // TODO(olivoil): dislike
                }),
            RoundIconButton.small(
                icon: Icons.comment,
                iconColor: Colors.blue,
                onPressed: () {
                  // TODO(olivoil): add to list
                }),
            RoundIconButton.large(
                icon: Icons.favorite,
                iconColor: Colors.green,
                onPressed: () {
                  // TODO(olivoil): like
                }),
            RoundIconButton.small(
                icon: Icons.featured_video,
                iconColor: Colors.purple,
                onPressed: () {
                  // TODO(olivoil): watch trailer
                }),
          ],
        ),
      ),
    );
  }

  Widget _buildCardStack() {
    return AnchoredOverlay(
      showOverlay: true,
      child: Center(),
      overlayBuilder: (BuildContext context, Rect anchorBounds, Offset anchor) {
        return CenterAbout(
          position: anchor,
          child: Container(
            width: anchorBounds.width,
            height: anchorBounds.height,
            padding: EdgeInsets.all(16.0),
            child: MovieCard(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildCardStack(),
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

class MovieCard extends StatefulWidget {
  @override
  _MovieCardState createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  Widget _buildBackground() {
    return PosterBrowser(
      imageUrls: <String>[
        'https://image.tmdb.org/t/p/w1280/uyJgTzAsp3Za2TaPiZt2yaKYRIR.jpg',
        'https://image.tmdb.org/t/p/w1280/bXYjDmzSRkIu0ljs2MrwyvKe7er.jpg',
        'https://image.tmdb.org/t/p/w1280/oBysFnbG7ZfbaApAMvU9TOru5O0.jpg',
        'https://image.tmdb.org/t/p/w1280/zwVvMnqY55K01dzTjyWpYnorFE1.jpg',
        'https://image.tmdb.org/t/p/w1280/4gY9Hy7LNmiiVFCMYzx7ZcP3z2W.jpg',
      ],
      visiblePhotoIndex: 0,
    );
  }

  Widget _buildMovieSynopsis() {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 0.0,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.transparent,
              Colors.black.withOpacity(0.8),
            ],
          ),
        ),
        padding: EdgeInsets.all(24.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Fantastic Beasts: The Crimes of Grindelwald',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.info, color: Colors.white),
              onPressed: () {
                // TODO(olivoil): show synopsis
              },
            ),
            // Icon(Icons.info, color: Colors.white),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0x11000000),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Material(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                _buildBackground(),
                _buildMovieSynopsis(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PosterBrowser extends StatefulWidget {
  PosterBrowser({Key key, this.imageUrls, this.visiblePhotoIndex})
      : super(key: key);

  final List<String> imageUrls;
  final int visiblePhotoIndex;

  @override
  PosterBrowserState createState() {
    return PosterBrowserState();
  }
}

class PosterBrowserState extends State<PosterBrowser> {
  int visiblePosterIndex;

  @override
  void initState() {
    super.initState();
    visiblePosterIndex = widget.visiblePhotoIndex;
  }

  @override
  void didUpdateWidget(PosterBrowser oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.visiblePhotoIndex != oldWidget.visiblePhotoIndex) {
      setState(() {
        visiblePosterIndex = widget.visiblePhotoIndex;
      });
    }
  }

  void _prevImage() {
    setState(() {
      visiblePosterIndex = max(visiblePosterIndex - 1, 0);
    });
  }

  void _nextImage() {
    setState(() {
      visiblePosterIndex =
          min(visiblePosterIndex + 1, widget.imageUrls.length - 1);
    });
  }

  Widget _buildPhotoControls() {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        GestureDetector(
          onTap: _prevImage,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topLeft,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        GestureDetector(
          onTap: _nextImage,
          child: FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topRight,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPhotoIndicator() {
    return Positioned(
      top: 0.0,
      left: 0.0,
      right: 0.0,
      child: CarouselIndicator(
        itemCount: widget.imageUrls.length,
        visibleItemIndex: visiblePosterIndex,
      ),
    );
  }

  Widget _buildImage() {
    return FadeInImage.memoryNetwork(
      placeholder: kTransparentImage,
      image: widget.imageUrls[visiblePosterIndex],
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        _buildImage(),
        _buildPhotoIndicator(),
        _buildPhotoControls(),
      ],
    );
  }
}

class CarouselIndicator extends StatelessWidget {
  CarouselIndicator({this.itemCount, this.visibleItemIndex});

  final int itemCount;
  final int visibleItemIndex;

  Widget _buildActiveIndicator() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 2.0, right: 2.0),
        child: Container(
          height: 3.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2.5),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Color(0x22000000),
                  spreadRadius: 0.0,
                  blurRadius: 2.0,
                  offset: Offset(0.0, 1.0),
                ),
              ]),
        ),
      ),
    );
  }

  Widget _buildInactiveIndicator() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 2.0, right: 2.0),
        child: Container(
          height: 3.0,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.circular(2.5),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildIndicators() {
    final List<Widget> indicators = <Widget>[];

    for (int i = 0; i < itemCount; ++i) {
      indicators.add(i == visibleItemIndex
          ? _buildActiveIndicator()
          : _buildInactiveIndicator());
    }

    return indicators;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: _buildIndicators(),
      ),
    );
  }
}
