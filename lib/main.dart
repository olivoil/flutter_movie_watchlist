import 'package:flutter/material.dart';
import 'package:rmdb_app/cards.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: DraggableCard(),
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
