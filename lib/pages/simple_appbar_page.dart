import 'package:flutter/material.dart';
import 'package:flutter_app_bar/main.dart';

class SimpleAppbarPage extends StatelessWidget {
  const SimpleAppbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(MyApp.title),
          // centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => {},
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.notifications_none),
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.search),
            ),
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purple, Colors.red],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft)),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5.0,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Feed",
              ),
              Tab(
                icon: Icon(Icons.face),
                text: "Profile",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Settings",
              ),
            ],
          ),
          elevation: 20.0,
          titleSpacing: 20.0,
        ),
        body: TabBarView(
          children: <Widget>[
            buildPage("Home page"),
            buildPage("Feed page"),
            buildPage("Profile page"),
            buildPage("Settings page"),
          ],
        ),
      ),
    );
  }
}

Widget buildPage(String text) {
  return Center(
    child: Text(
      text,
      style: const TextStyle(fontSize: 28),
    ),
  );
}
