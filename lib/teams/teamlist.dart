import 'package:flutter/material.dart';

class TeamList extends StatefulWidget {
  @override
  _TeamListState createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Teams'),
        ),
        body: Container(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.lightBlue[300],
                child: const Center(child: Text('Team A')),
              ),
              Container(
                height: 50,
                color: Colors.lightBlue[600],
                child: const Center(child: Text('Team B')),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ));
  }
}
