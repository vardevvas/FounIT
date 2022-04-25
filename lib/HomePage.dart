import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Home')), actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        )
      ]),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ali"),
              accountEmail: Text("alikhwad@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://pin.it/6DnC7P8"),
              ),
            ),
            ListTile(
              title: Text("My Finds"),
              leading: Icon(Icons.search),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("My Finds"),
              leading: Icon(Icons.search),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("My Finds"),
              leading: Icon(Icons.search),
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'chat'),
        ],
      ),
      // backgroundColor: const Color(0xFFBFBFBF),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  child: SvgPicture.asset('assets/images/Logo.svg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}