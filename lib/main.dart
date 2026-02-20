import 'package:flutter/material.dart';
import 'home/screen/home_page.dart';
import 'profile/screen/profile_page.dart';
import 'schedule/screen/schedule_page.dart';
import 'chat/screen/chat_page.dart';
import 'notification/screen/notification_page.dart';
void main () {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/schedule': (context) => SchedulePage(),
        '/chat': (context) => ChatPage(),
        '/notification': (context) => NotificationPage(),
      },
    );
  }
}