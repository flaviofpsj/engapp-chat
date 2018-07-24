import 'package:flutter/material.dart';
import '../../models/model.dart';

class StatusScreen extends StatefulWidget {
  @override
  StatusScreenState createState() => new StatusScreenState();
}

class StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: new Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          new FloatingActionButton(
            mini: true,
            backgroundColor: Colors.grey[200],
            child: new Icon(
              Icons.edit,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () => print("New text status!"),
          ),
          new SizedBox(
            height: 15.0,
          ),
          new FloatingActionButton(
            backgroundColor: Theme.of(context).accentColor,
            child: new Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onPressed: () => print("New status!"),
          ),
        ],
      ),
      body: new ListView.builder(
        itemCount: model.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new GestureDetector(
              onTap: () { print(model[i].timeStatus); },
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
                title: new Text(
                  model[i].name,
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: new Container(
                  padding: new EdgeInsets.only(top: 5.0),
                  child: new Text(
                    model[i].timeStatus,
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
