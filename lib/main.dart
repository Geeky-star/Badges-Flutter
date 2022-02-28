import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  bool showElevatedButtonBadge = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Badge(
          position: BadgePosition.topEnd(top: 10, end: 10),
          badgeContent: null,
          child: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ),
        title:
            const Text('Badges', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Chip(
                  label: Text(
                    'Hello',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(0),
                  backgroundColor: Colors.blue),
              Chip(
                  labelPadding: EdgeInsets.all(20),
                  label: Text(
                    'Hello',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(0),
                  backgroundColor: Colors.blue),
              Chip(
                  avatar: Icon(Icons.delete, color: Colors.white),
                  label: Text(
                    'Hello',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(0),
                  backgroundColor: Colors.blue),
              Chip(
                  labelStyle: TextStyle(fontSize: 20, letterSpacing: 4),
                  label: Text(
                    'Hello',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding: EdgeInsets.all(0),
                  backgroundColor: Colors.blue),
            ],
          ),
          ListTile(
            trailing: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.black,
              ),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Messages"),
                Badge(
                  elevation: 0,
                  shape: BadgeShape.circle,
                  padding: EdgeInsets.all(7),
                  badgeContent: Text(
                    "2",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Badge(
            position: BadgePosition.topEnd(top: 0, end: 3),
            animationDuration: Duration(milliseconds: 300),
            animationType: BadgeAnimationType.slide,
            badgeContent: Text(
              _counter.toString(),
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  print("These are items in your cart");
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    },
                    icon: Icon(Icons.add),
                    label: Text('Add Items')),
                ElevatedButton.icon(
                    onPressed: () {
                      if (_counter > 0) {
                        setState(() {
                          _counter--;
                        });
                      }
                    },
                    icon: Icon(Icons.remove),
                    label: Text('Remove Items')),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Badge(
            badgeContent: Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            badgeColor: Colors.green,
            child: Icon(Icons.person, size: 50),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Badge(
              elevation: 0,
              position: BadgePosition.topEnd(),
              padding: EdgeInsetsDirectional.only(end: 0),
              badgeColor: Colors.transparent,
              badgeContent: Icon(Icons.error, size: 27.0, color: Colors.red),
              child: Text(
                'This is RTL',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
