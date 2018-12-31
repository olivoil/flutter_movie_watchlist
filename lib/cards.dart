import 'dart:math';

import 'package:flutter/material.dart';

import 'package:rmdb_app/layout_overlays.dart';
import 'package:rmdb_app/media_browser.dart';

class DraggableCard extends StatefulWidget {
  @override
  _DraggableCardState createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard>
    with TickerProviderStateMixin {
  Offset cardOffset = Offset(0.0, 0.0);
  Offset dragStart;
  Offset dragPosition;
  Offset slideBackStart;
  AnimationController slideBackAnimation;

  @override
  void initState() {
    super.initState();

    slideBackAnimation = AnimationController(
      duration: Duration(milliseconds: 1000),
      vsync: this,
    )
      ..addListener(() => setState(() {
            cardOffset = Offset.lerp(
              slideBackStart,
              Offset(0.0, 0.0),
              Curves.elasticOut.transform(slideBackAnimation.value),
            );
          }))
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            dragStart = null;
            slideBackStart = null;
            dragPosition = null;
          });
        }
      });
  }

  @override
  void dispose() {
    slideBackAnimation.dispose();
    super.dispose();
  }

  void _onPanStart(DragStartDetails details) {
    dragStart = details.globalPosition;

    if (slideBackAnimation.isAnimating) {
      slideBackAnimation.stop(canceled: true);
    }
  }

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      dragPosition = details.globalPosition;
      cardOffset = dragPosition - dragStart;
    });
  }

  void _onPanEnd(DragEndDetails details) {
    slideBackStart = cardOffset;
    slideBackAnimation.forward(from: 0.0);
  }

  double _rotation(Rect dragBounds) {
    if (dragStart == null) {
      return 0.0;
    }

    final int rotationCornerMultiplier =
        dragStart.dy >= dragBounds.top + (dragBounds.height / 2) ? -1 : 1;

    return (pi / 8) *
        (cardOffset.dx / dragBounds.width) *
        rotationCornerMultiplier;
  }

  Offset _rotationOrigin(Rect dragBounds) {
    if (dragStart == null) {
      return Offset(0.0, 0.0);
    }

    return dragStart - dragBounds.topLeft;
  }

  @override
  Widget build(BuildContext context) {
    return AnchoredOverlay(
      showOverlay: true,
      child: Center(),
      overlayBuilder: (BuildContext context, Rect anchorBounds, Offset anchor) {
        return CenterAbout(
          position: anchor,
          child: Transform(
            transform:
                Matrix4.translationValues(cardOffset.dx, cardOffset.dy, 0.0)
                  ..rotateZ(_rotation(anchorBounds)),
            origin: _rotationOrigin(anchorBounds),
            child: Container(
              width: anchorBounds.width,
              height: anchorBounds.height,
              padding: EdgeInsets.all(16.0),
              child: GestureDetector(
                onPanStart: _onPanStart,
                onPanUpdate: _onPanUpdate,
                onPanEnd: _onPanEnd,
                child: Card(),
              ),
            ),
          ),
        );
      },
    );
  }
}

class Card extends StatefulWidget {
  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
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
