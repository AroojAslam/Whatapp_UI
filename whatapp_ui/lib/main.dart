import 'package:flutter/material.dart';

void main() {
  runApp( Whatapp_UI());
}

class Whatapp_UI extends StatelessWidget {
   Whatapp_UI({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('WhatApp '),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.people),
              ),
              Tab(
                child:Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20,),
            Icon(Icons.search),
            SizedBox(width: 10,),
           PopupMenuButton(
             icon:Icon( Icons.more_vert_outlined),
               itemBuilder: (context, )=>[
             PopupMenuItem(
               value: 1,
               child:Text(
               'New Group'
             ),
             ),
             PopupMenuItem(
               value: 2,
               child: Text('New Broadcast'),
             ),
             PopupMenuItem(
               value: 3,
               child: Text('Linked Device'),
             ),
             PopupMenuItem(
               value: 4,
               child: Text('Starred massage'),
             ),
             PopupMenuItem(
               value: 5,
               child: Text('Setting'),
             )
               ]
           ),
          ],
        ),
        body: TabBarView(
          children: [
            Text('hello'),
            Text('hello'),
            Text('hello'),
            Text('hello'),
          ],
        ),
      ),
    )
    );
  }
}

