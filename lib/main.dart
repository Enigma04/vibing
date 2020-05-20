import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibing/User_Login.dart';
import 'package:vibing/User_Profile.dart';
import 'package:vibing/collaboration.dart';
import 'package:vibing/feed.dart';
import 'package:vibing/settings.dart';
import 'package:vibing/side_menu.dart';
import 'package:vibing/your_sound_recording_list.dart';
void main()
{
  runApp(MaterialApp(
    home: UserLogin() ,
  )) ;
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vibing',
      routes: <String, WidgetBuilder>{
        '/user_profile': (BuildContext context)=> new UserProfile(),
        '/settings':(BuildContext context)=> new Settings(),
        '/your_sound_recording':(BuildContext context)=> new UserSoundRecordingList(),
        '/home':(BuildContext context)=> new Home(),
      },
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                   
                  color:Colors.yellow,
                ),
              ),
              ListTile(
                  title: Text('Profile'),
                  trailing: Icon(
                    Icons.supervised_user_circle,
                  ),
                  onTap: () {Navigator.of(context).pushNamed('/user_profile');}
              ),
              ListTile(
                title: Text('Settings'),
                trailing: Icon(
                  Icons.settings,
                ),
                onTap: (){Navigator.of(context).pushNamed('/settings');},
              ),
              ListTile(
                title: Text('Your Recordings'),
                trailing: Icon(
                  Icons.audiotrack,
                ),
                onTap: (){Navigator.of(context).pushNamed('/your_sound_recording');},
              ),
              ListTile(
                title: Text('Sign out'),
                trailing: Icon(
                  Icons.keyboard_tab
                ),
                onTap: null,
              ),
              ListTile(
                title: Text('Cancel'),
                trailing: Icon(
                    Icons.cancel,
                ),
                onTap: ()=>Navigator.pop(context),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Vibing',style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
          backgroundColor: Colors.yellow,
          actions: <Widget>[
            IconButton(
              iconSize: 30,
              icon: Icon(Icons.supervised_user_circle),
            ),
          ], 
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text:'Feed',),
              Tab(text:'Collaborations',)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Feed(),
            Collaboration(),
          ],
        ),
      ),

    );
  }
}
