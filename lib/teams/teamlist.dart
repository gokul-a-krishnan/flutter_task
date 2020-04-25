import 'package:flutter/material.dart';

class TeamList extends StatefulWidget {
  @override
  _TeamListState createState() => _TeamListState();
}

class _TeamListState extends State<TeamList> {
  TextEditingController nameController = new TextEditingController();

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
                child: FlatButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Add Team"),
                              content: Text('Select edit or delete'),
                              actions: <Widget>[
                                FlatButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Delete'),
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text('Edit'),
                                )
                              ],
                            );
                          });
                    },
                    child: Container(child: Center(child: Text('Team A')))),
              ),
              Container(
                height: 50,
                color: Colors.lightBlue[600],
                child: FlatButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Add Team"),
                              content: Text('Select edit or delete'),
                              actions: <Widget>[
                                FlatButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Delete'),
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text('Edit'),
                                )
                              ],
                            );
                          });
                    },
                    child:
                        Container(child: const Center(child: Text('Team B')))),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Add Team"),
                    content: TextField(
                      decoration:
                          new InputDecoration(hintText: 'Enter Name Here'),
                      controller: nameController,
                      maxLengthEnforced: false,
                      maxLength: 15,
                    ),
                    actions: <Widget>[
                      FlatButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Cancel'),
                      ),
                      FlatButton(
                        onPressed: () {},
                        child: Text('Add'),
                      )
                    ],
                  );
                });
          },
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ));
  }
}
