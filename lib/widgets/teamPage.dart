import 'package:flutter/material.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  List<String> teams = ['Team A', 'Team B'];
  String newTeam ;

  addingNewTeams() {
    setState(() {
      teams.add(newTeam);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teams'),
      ),
      body: teams.isEmpty
          ? Center(
              child: Text('No Teams Yet!!'),
            )
          : Stack(
              children: [
                ListView.separated(
                  itemCount: teams.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 1),
                      child: FlatButton(
                        onPressed: () => print('pressed'),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            teams[index],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 3,
                      thickness: 2,
                    );
                  },
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 56),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                        child: Icon(Icons.add),
                        tooltip: 'Add Team',
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (_) {
                              return Dialog(
                                elevation: 18,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 145,
                                  width: 350,
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                            bottom: 4,
                                          ),
                                          child: Text(
                                            'Add Team',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Enter Name Here',
                                        ),
                                        //onTap: (

                                       // ),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: SizedBox(),
                                          ),
                                          Flexible(
                                            fit: FlexFit.tight,
                                            child: FlatButton(
                                              onPressed: null,
                                              child: Text('Cancel'),
                                            ),
                                          ),
                                          Flexible(
                                            fit: FlexFit.tight,
                                            child: FlatButton(
                                              onPressed: addingNewTeams,
                                              child: Text('Add'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }),
                  ),
                )
              ],
            ),
    );
  }
}
