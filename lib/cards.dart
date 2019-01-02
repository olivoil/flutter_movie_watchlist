import 'dart:math';

import 'package:flutter/material.dart';

import 'package:rmdb_app/layout_overlays.dart';
import 'package:rmdb_app/media_browser.dart';
import 'package:rmdb_app/recommendations.dart';

class DraggableCard extends StatefulWidget {
  DraggableCard({Key key, this.reco}) : super(key: key);

  final MovieRecommendation reco;

  @override
  _DraggableCardState createState() => _DraggableCardState();
}

class _DraggableCardState extends State<DraggableCard>
    with TickerProviderStateMixin {
  Decision decision;
  GlobalKey cardKey = GlobalKey(debugLabel: 'card_key');
  Offset cardOffset = Offset(0.0, 0.0);
  Offset dragStart;
  Offset dragPosition;
  Offset slideBackStart;
  AnimationController slideBackAnimation;
  Tween<Offset> slideOutTween;
  AnimationController slideOutAnimation;

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

    slideOutAnimation = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    )
      ..addListener(() => setState(() {
            cardOffset = slideOutTween.evaluate(slideOutAnimation);
          }))
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            dragStart = null;
            slideOutTween = null;
            dragPosition = null;
            // TODO(olivoil): switch to next card in stack
            cardOffset = Offset(0.0, 0.0);
            widget.reco.reset();
          });
        }
      });

    widget.reco.addListener(_onRecommendationChange);
    decision = widget.reco.decision;
  }

  @override
  void didUpdateWidget(DraggableCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.reco != oldWidget.reco) {
      oldWidget.reco.removeListener(_onRecommendationChange);
      widget.reco.addListener(_onRecommendationChange);
      decision = widget.reco.decision;
    }
  }

  @override
  void dispose() {
    slideBackAnimation.dispose();
    widget.reco.removeListener(_onRecommendationChange);
    super.dispose();
  }

  void _onRecommendationChange() {
    if (widget.reco.decision != decision) {
      switch (widget.reco.decision) {
        case Decision.dislike:
          _slideLeft();
          break;
        case Decision.like:
          _slideRight();
          break;
        case Decision.watchLater:
          _slideDown();
          break;
        case Decision.skip:
          _slideUp();
          break;
        default:
          break;
      }
    }

    decision = widget.reco.decision;
  }

  Offset _chooseRandomDragStart() {
    final BuildContext cardContext = cardKey.currentContext;
    final Offset topLeft = (cardContext.findRenderObject() as RenderBox)
        .localToGlobal(Offset(0.0, 0.0));
    final double dragStartY =
        cardContext.size.height * (Random().nextDouble() < 0.5 ? 0.25 : 0.75) +
            topLeft.dy;
    // final double dragStartX =
    //     cardContext.size.width * (Random().nextDouble() < 0.5 ? 0.25 : 0.75) +
    //         topLeft.dx;
    final double dragStartX = (cardContext.size.width / 2) + topLeft.dx;

    return Offset(dragStartX, dragStartY);
  }

  void _slideLeft() {
    final double screenWidth = context.size.width;
    dragStart = _chooseRandomDragStart();
    slideOutTween =
        Tween<Offset>(begin: cardOffset, end: Offset(-2 * screenWidth, 0.0));
    slideOutAnimation.forward(from: 0.0);
  }

  void _slideRight() {
    final double screenWidth = context.size.width;
    dragStart = _chooseRandomDragStart();
    slideOutTween =
        Tween<Offset>(begin: cardOffset, end: Offset(2 * screenWidth, 0.0));
    slideOutAnimation.forward(from: 0.0);
  }

  void _slideUp() {
    final double screenHeight = context.size.height;
    dragStart = _chooseRandomDragStart();
    slideOutTween =
        Tween<Offset>(begin: cardOffset, end: Offset(0.0, -2 * screenHeight));
    slideOutAnimation.forward(from: 0.0);
  }

  void _slideDown() {
    final double screenHeight = context.size.height;
    dragStart = _chooseRandomDragStart();
    slideOutTween =
        Tween<Offset>(begin: cardOffset, end: Offset(0.0, 2 * screenHeight));
    slideOutAnimation.forward(from: 0.0);
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
    final Offset dragVector = cardOffset / cardOffset.distance;

    final double xOffset = cardOffset.dx / context.size.width;
    final double yOffset = cardOffset.dy / context.size.height;

    final bool isInLeftRegion = xOffset < -0.45;
    final bool isInRightRegion = xOffset > 0.45;
    final bool isInTopRegion = yOffset < -0.40;
    final bool isInBottomRegion = yOffset > 0.40;

    setState(() {
      if (isInLeftRegion || isInRightRegion) {
        slideOutTween = Tween<Offset>(
            begin: cardOffset, end: dragVector * (2 * context.size.width));
        slideOutAnimation.forward(from: 0.0);
      } else if (isInTopRegion || isInBottomRegion) {
        slideOutTween = Tween<Offset>(
            begin: cardOffset, end: dragVector * (2 * context.size.height));
        slideOutAnimation.forward(from: 0.0);
      } else {
        slideBackStart = cardOffset;
        slideBackAnimation.forward(from: 0.0);
      }
    });
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
              key: cardKey,
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
