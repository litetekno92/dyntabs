import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: TabsDemo(title: 'Flutter Demo Home Page'),
      home: TabsDemo(),
    );
  }
}

class TabsDemo extends StatefulWidget {
  @override
  _TabsDemoState createState() => _TabsDemoState();
}

class _TabsDemoState extends State<TabsDemo> {
  TabController _controller;
  List<String> categories = ["a", "b", "c", "d", "e", "f", "g", "h"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext ctxt) {
    return new MaterialApp(
        home: DefaultTabController(
            length: categories.length,
            child: new Scaffold(
                appBar: new AppBar(
                  title: new Text("Title"),
                  bottom: new TabBar(
                    isScrollable: true,
                    tabs: List<Widget>.generate(categories.length, (int index) {
                     // print(categories[index]);
                      return new Tab(
                          icon: Icon(Icons.directions_car),
                          text: categories[index]
                          );
                    }),
                  ),
                ),
                body: new TabBarView(
                  children:
                      List<Widget>.generate(categories.length, (int index) {
                   // print(categories[0]);
                    return new Text(
                      categories[index]
                    );
                  }),
                ))));
  }
}
