import 'package:flutter/material.dart';
import '../../models/model.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("New chat!"),
      ),
      body: new ListView.builder(
        itemCount: model.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new GestureDetector(
              onTap: () { print(model[i].message); },
              child: new ListTile(
                leading: new Container(
                  width: 60.0,
                  height: 60.0,
                  child: new CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: new NetworkImage(model[i].avatarUrl),
                  ),
                ),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      model[i].name,
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    new Text(
                      model[i].time,
                      style: new TextStyle(
                        color: Colors.grey,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                subtitle: new Container(
                  padding: new EdgeInsets.only(top: 5.0),
                  child: new Text(
                    model[i].message,
                    style: new TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ),
            ),
            new Divider(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
