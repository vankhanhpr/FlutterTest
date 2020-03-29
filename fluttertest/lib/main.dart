import 'package:flutter/material.dart';
import './activity/favorite.dart' show Favorite;
import './activity/home.dart' show Home;
import './activity/drawerhome.dart' show DrawerHome;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KhanhNguyenApp',
      theme: ThemeData(
      
        primarySwatch: Colors.red,

      ),
      home: MyHomePage(title: 'KhanhNguyenIT'),//first page
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
  List<Widget> _widgetOptions = <Widget>[Favorite(), Home()];
  List<BottomNavigationBarItem> listBottomBar = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
          color: Colors.red,
          size: 24,
        ),
        title: Text("Favorite")),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Colors.red,
          size: 24,
        ),
        title: Text("Home")),
  ];
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body: SafeArea(
           top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: _widgetOptions,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:listBottomBar,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: DrawerHome(),
    );
  }
}
