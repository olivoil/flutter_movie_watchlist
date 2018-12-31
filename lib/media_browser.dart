import 'dart:math';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
