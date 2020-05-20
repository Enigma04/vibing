import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Feed extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
              controller: ScrollController(),
              scrollDirection: Axis.vertical,
              slivers: <Widget>[
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Card(

                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Icon(Icons.supervised_user_circle),
                                        title: Text('Profile 1'),
                                        subtitle: Text(
                                            "Want y'all to listen to this amazing song!!!"),

                                      ),
                                      ButtonBar(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            alignment: Alignment(-60, 0),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.add_comment),
                                            color: Colors.lightBlue,
                                            alignment: Alignment(-60, 0),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                              ),
                              Card(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Icon(Icons.supervised_user_circle),
                                        title: Text('Profile 1'),
                                        subtitle: Text(
                                            "Want y'all to listen to this amazing song!!!"),

                                      ),
                                      ButtonBar(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            alignment: Alignment(-60, 0),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.add_comment),
                                            color: Colors.lightBlue,
                                            alignment: Alignment(-60, 0),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                              ),
                              Card(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Icon(Icons.supervised_user_circle),
                                        title: Text('Profile 1'),
                                        subtitle: Text(
                                            "Want y'all to listen to this amazing song!!!"),

                                      ),
                                      ButtonBar(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            alignment: Alignment(-60, 0),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.add_comment),
                                            color: Colors.lightBlue,
                                            alignment: Alignment(-60, 0),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                              ),
                              Card(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Icon(Icons.supervised_user_circle),
                                        title: Text('Profile 1'),
                                        subtitle: Text(
                                            "Want y'all to listen to this amazing song!!!"),

                                      ),
                                      ButtonBar(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            alignment: Alignment(-60, 0),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.add_comment),
                                            color: Colors.lightBlue,
                                            alignment: Alignment(-60, 0),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                              ),
                              Card(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Icon(Icons.supervised_user_circle),
                                        title: Text('Profile 1'),
                                        subtitle: Text(
                                            "Want y'all to listen to this amazing song!!!"),

                                      ),
                                      ButtonBar(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            alignment: Alignment(-60, 0),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.add_comment),
                                            color: Colors.lightBlue,
                                            alignment: Alignment(-60, 0),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                              ),
                              Card(
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Icon(Icons.supervised_user_circle),
                                        title: Text('Profile 1'),
                                        subtitle: Text(
                                            "Want y'all to listen to this amazing song!!!"),

                                      ),
                                      ButtonBar(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.favorite_border),
                                            alignment: Alignment(-60, 0),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.add_comment),
                                            color: Colors.lightBlue,
                                            alignment: Alignment(-60, 0),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                              ),
                           BottomAppBar(
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                           children: <Widget>[
                             FloatingActionButton(
                               backgroundColor: Colors.yellow,
                               onPressed: null,
                               autofocus: true,
                               tooltip: 'Vibe'
                             ),
                           ],
                           )
                           ),
                            ],
                          )
                        ]
                      ),
                    ),
                  ],
                ),
            );
  }
}

/*Card(
margin: EdgeInsets.all(5) ,
child: Column(
children: <Widget>[
ListTile(
leading: Icon(Icons.supervised_user_circle),
title: Text('Profile 1'),
subtitle: Text("Want y'all to listen to this amazing song!!"),
),
ButtonBar(
children: <Widget>[
IconButton(
icon: Icon(Icons.favorite,
color: Colors.grey,
),
alignment: Alignment(-60,0) ,
),
IconButton(
icon: Icon(Icons.comment,
color: Colors.lightBlueAccent,),
alignment: Alignment(-58,0),
)
],
),
],
),
),
 */