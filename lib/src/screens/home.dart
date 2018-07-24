import 'package:flutter/material.dart';
import 'call/call_screen.dart';
import 'camera/camera_screen.dart';
import 'chat/chat_screen.dart';
import 'status/status_screen.dart';

class Home extends StatefulWidget {

  final cameras;
  Home(this.cameras);

  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(
      vsync: this,
      initialIndex: 1,
      length: 4,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Engapp Chat"),
        elevation: 3.0,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ],
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {},
          ),
          new PopupMenuButton(
            tooltip: 'Settings',
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              new PopupMenuItem(
                child: new Text('New group'),
                value: () {},
              ),
              new PopupMenuItem(
                child: new Text('New transmission'),
                value: () {},
              ),
              new PopupMenuItem(
                child: new Text('Engapp Chat Web'),
                value: () {},
              ),
              new PopupMenuItem(
                child: new Text('Marked messages'),
                value: () {},
              ),
              new PopupMenuItem(
                child: new Text('Settings'),
                value: () {},
              ),
            ]
          ),
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(widget.cameras),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
    );
  }
}
