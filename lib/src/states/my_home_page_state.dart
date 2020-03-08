import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import '../pages/my_home_page.dart';

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int currentPage = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: FancyBottomNavigation(
          tabs: [
              TabData(iconData: Icons.home, title: "ホーム"),
              TabData(iconData: Icons.search, title: "検索"),
              TabData(iconData: Icons.directions_run, title: "サークル"),
              TabData(iconData: Icons.person, title: "マイページ")
          ],
          onTabChangedListener: (position) {
              setState(() {
                currentPage = position;
                print('currentPage : ' + currentPage.toString());
              });
          },
      ),
    );
  }
}
