import 'package:flutter/material.dart';
import '../../models/model.dart';

class CallScreen extends StatefulWidget {
  @override
  CallScreenState createState() => new CallScreenState();
}

class CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.call,
          color: Colors.white,
        ),
        onPressed: () => print("New call!"),
      ),
      body: new ListView.builder(
        itemCount: model.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new ListTile(
              leading: new Container(
                width: 60.0,
                height: 60.0,
                child: new CircleAvatar(
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: new NetworkImage(model[i].avatarUrl),
                ),
              ),
              title: new Text(
                model[i].name,
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: new Container(
                padding: new EdgeInsets.only(top: 5.0),
                child: new Text(
                  model[i].call,
                  style: new TextStyle(
                    color: Colors.grey,
                    fontSize: 13.0,
                  ),
                ),
              ),
              trailing: new IconButton(
                icon: new Icon(Icons.call),
                color: Theme.of(context).primaryColor,
                onPressed: () { print(model[i].call); },
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
