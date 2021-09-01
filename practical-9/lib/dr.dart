import 'package:flutter/material.dart';
import 'package:practical_9/call.dart';
import 'package:practical_9/profile.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Fenil Vaghasiya'),
            accountEmail: Text('fenilvaghasiya29@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Text(
                'F',
                style: TextStyle(fontSize: 20.0),
              ),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: <Widget>[
            ],
            onDetailsPressed: () {},
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assest/fenil.jpg"), fit: BoxFit.cover)),
          ),
          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: Text('Download'),
            leading: Icon(Icons.cloud_download),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => profile(),
                ),
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Watchlist'),
            leading: Icon(Icons.watch_later),
          ),

          ListTile(
            title: Text('Movie'),
            leading: Icon(Icons.movie),
            onTap: () { Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => calls(),
              ),
            );},
          ),
          Divider(),
          ListTile(
            title: Text('Language'),
            leading: Icon(Icons.language),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Trending'),
            leading: Icon(Icons.trending_up),
            onLongPress: () {},
          ),
          ListTile(
              title: Text('Games'),
              leading: Icon(Icons.games),
              onTap: () {
                Navigator.of(context).pop();
              }
              ),
          Divider(),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {},
          ),
        ]),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.9],
            colors: [
              Colors.greenAccent[400],
              Colors.greenAccent,
            ],
          ),
        ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home,
                size: 50.0,
                color: Colors.white,
              ),
              Text(
                'Home Page',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
