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
          title:const Text('WhatApp '),
          bottom: const TabBar(
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
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(width: 20,),
            const Icon(Icons.search),
            const SizedBox(width: 10,),
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

           Column(
             children: [
               const  SizedBox(
                 height: 20,
               ),
              Container(
                 height: 250,
                 width: 400,

                   child: const Image(
                     image: AssetImage('assets/images/community.jpeg'),
                   ),
               ),
               const  SizedBox(height: 10,),
               const Text('Stay Connected with community',
                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
               ),
               const SizedBox(
                 height: 20,

               ),
              RichText(
                textAlign: TextAlign.center,
                  text: const TextSpan(
                children: [
                  TextSpan(text: 'Community bring members together in \n'
                      'topic-based group, and make it easy to get \n'
                      'admin announcements .Any community you\'re\n '
                      'added to will appear here', ),
                  TextSpan(text: 'Learn more',style: TextStyle(color: Colors.teal))
                ]
              )),
               const SizedBox(height: 20,),
               Container(
                 height: 35,
                 width: 400,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20),
                   color: Colors.teal,

                 ),
                 child: const Center(
                   child: Text('Start your community',
                     style: TextStyle(color: Colors.white),),
                 ),
               )
             ],
           ),
            ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text('Arooj aslam'),
                  subtitle: Text('your masssges'),
                  trailing: Text('11:56 am'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.teal,
                    child:Icon(Icons.person),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                if(index == 0){
                 return  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text('Recent Update'),
                     ListTile(
                       title: Text('Arooj aslam'),
                       subtitle: Text('15 minutes age'),
                       leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 3
                          ),
                          shape: BoxShape.circle,
                        ),
                         child: CircleAvatar(
                           backgroundColor: Colors.white24,
                           child:Icon(Icons.person),
                         ),
                       )
                     ),
                   ],
                 );
                }
                  else{
                  return ListTile(
                      title: Text('Arooj aslam'),
                      subtitle: Text('15 minutes age'),
                      leading: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.teal,
                              width: 3
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white24,
                          child:Icon(Icons.person),
                        ),
                      )
                  );
                }

              },
            ),
            Text('call')
          ],
        ),
      ),
    )
    );
  }
}

