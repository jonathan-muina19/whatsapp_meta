import 'package:flutter/material.dart';
import 'package:whatsapp_meta/pages/Home/atcus_screen.dart';
import 'package:whatsapp_meta/pages/Home/call_screen.dart';
import 'package:whatsapp_meta/pages/Home/chat_screen.dart';
import 'package:whatsapp_meta/pages/Home/communautes_screen.dart';
import 'package:whatsapp_meta/widgets/uiHelper.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // La liate de toutes mes pages
  final screen = [
    ChatScreen(),
    AtcusScreen(),
    CommunautesScreen(),
    CallScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Uihelper.customText(
          text: 'WhatsApp', 
          height: 25,
          fontweight: FontWeight.bold
        ),
        actions: [
          Icon(Icons.photo_camera_outlined,color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10, ),
          Icon(Icons.more_vert,color: Colors.white ),
          SizedBox(width: 10),
        ],
      ),
      body: Divider(
        color: Colors.grey[800],
      ),
      
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        elevation: 500,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.message, color: Colors.white,), 
            label:'Discussions',
          ),
          NavigationDestination(
            icon: Icon(Icons.filter_tilt_shift, color: Colors.white), 
            label:'Actus'
          ),
           NavigationDestination(
            icon: Icon(Icons.groups_outlined, color: Colors.white), 
            label:'Communautes'
          ),
           NavigationDestination(
            icon: Icon(Icons.call_outlined, color: Colors.white), 
            label:'Appels'
          )
        ]),
    
    );
  }
}