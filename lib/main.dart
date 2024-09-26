import 'package:flutter/material.dart';
import 'package:learning_thing/dictionary_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  /// The root widget of the app, which is a [MaterialApp].
  ///
  /// The app has a blue theme and a single [MyHomePage] as its home page.
  ///
  /// The [MyHomePage] is given a unique key to ensure that it is rebuilt when
  /// the app is run again in the same process.
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My App Home Page', key: UniqueKey()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _getContentArea(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Dictionary'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }

  Widget _getContentArea(int index) {
    switch (index) {
      case 0:
        return Center(
          child: Text('Home Content'),
        );
      case 1:
        return Center(
          child: DictionaryList(),
        );
      case 2:
        return Center(
          child: Text('Settings Content'),
        );
      default:
        return Center(
          child: Text('Unknown Content'),
        );
    }
  }
}
