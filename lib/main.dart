import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Custom ListView'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var titles = [
    'Sun',
    'Moon',
    'Star',
    'Earth',
    'Galaxy',
    'Planets',
    'Sun',
    'Moon',
    'Star',
    'Earth',
    'Galaxy',
    'Planets',
    'Sun',
    'Moon',
    'Star',
    'Earth',
    'Galaxy',
    'Planets',
    'Sun',
    'Moon',
    'Star',
    'Earth',
    'Galaxy',
    'Planets',
    'Sun',
    'Moon',
    'Star',
    'Earth',
    'Galaxy',
    'Planets',
  ];
  var images = [
    'assets/images/sun.jpeg',
    'assets/images/moon.jpg',
    'assets/images/star.jpg',
    'assets/images/earth.jpg',
    'assets/images/galaxy.jpg',
    'assets/images/planets.jpg',
    'assets/images/sun2.jpg',
    'assets/images/moon1.jpg',
    'assets/images/star1.jpg',
    'assets/images/earth1.jpg',
    'assets/images/galaxy1.jpg',
    'assets/images/planets1.jpg',
    'assets/images/sun3.jpg',
    'assets/images/moon2.jpg',
    'assets/images/star2.jpg',
    'assets/images/earth2.jpg',
    'assets/images/galaxy2.jpg',
    'assets/images/planets2.jpg',
    'assets/images/sun4.jpg',
    'assets/images/moon3.jpg',
    'assets/images/star3.jpg',
    'assets/images/earth3.jpg',
    'assets/images/galaxy3.jpg',
    'assets/images/planets3.jpg',
    'assets/images/sun.jpeg',
    'assets/images/moon.jpg',
    'assets/images/star.jpg',
    'assets/images/earth.jpg',
    'assets/images/galaxy.jpg',
    'assets/images/planets.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home_outlined),
        elevation: 0.1,
        backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.custom(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => Card(
                    // shadowColor: Colors.amber,
                    elevation: 8.0,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 3.0),
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(images[index].toString())),
                        title: Text(
                          titles[index],
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.primaries[Random().nextInt(18)]),
                        ),
                        subtitle: const Text(
                          '93 million miles away',
                        ),
                        trailing: const Icon(Icons.keyboard_arrow_right)),
                  ),
              childCount: 30)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      endDrawer: const Drawer(),
    );
  }
}
