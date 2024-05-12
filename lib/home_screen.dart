// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> productsName = [
    'Ali',
    'Ameer',
    'Junaid',
    'Haris',
    'Kasim',
    'Sam',
    'Charles',
    'Danial',
    'Junaid',
    'Haris',
    'Kasim',
    'Ameer',
    'Junaid',
    'Haris',
    'Charles',
    'Danial',
    'Junaid',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("Whatsapp"),
            actions: [
              Icon(Icons.search),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Settings"),
                  ),
                  PopupMenuItem(child: Text("Profile")),
                  PopupMenuItem(child: Text("Whatsapp Web")),
                  PopupMenuItem(child: Text("Qr Code"))
                ],
              ),
            ],
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.ac_unit_outlined),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Updates",
              ),
              Tab(
                text: "Calls",
              )
            ]),
          ),
          body: TabBarView(children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1610548822783-33fb5cb0e3a8?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      fit: BoxFit.cover)),
            ),
            ListView.builder(
              itemCount: 17,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2hhdHNhcHAlMjBkcHxlbnwwfHwwfHx8MA%3D%3D"),
                    // child: Icon(Icons.person_2),
                  ),
                  title: Text(
                    productsName[index].toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("How are you?"),
                  trailing: Text("12:11 AM"),
                );
              },
            ),
            ListView.builder(
              itemCount: 17,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 3),
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2hhdHNhcHAlMjBkcHxlbnwwfHwwfHx8MA%3D%3D"),
                      // child: Icon(Icons.person_2),
                    ),
                  ),
                  title: Text(
                    productsName[index].toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("1:22 AM"),
                );
              },
            ),
            ListView.builder(
              itemCount: 17,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1614680376408-81e91ffe3db7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2hhdHNhcHAlMjBkcHxlbnwwfHwwfHx8MA%3D%3D"),
                    // child: Icon(Icons.person_2),
                  ),
                  title: Text(
                    productsName[index].toString(),
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  subtitle: index / 2 != 0
                      ? Text(
                          "You missed audio call",
                          style: TextStyle(color: Colors.red),
                        )
                      : Text("You missed Video call",
                          style: TextStyle(color: Colors.red)),
                  trailing:
                      index / 2 != 0 ? Icon(Icons.call) : Icon(Icons.videocam),
                );
              },
            ),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ));
  }
}
