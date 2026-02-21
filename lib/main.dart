import 'package:flutter/material.dart';
import 'features/home/screen/home_page.dart';
import 'features/profile/screen/profile_page.dart';
import 'features/schedule/screen/schedule_page.dart';
import 'features/chat/screen/chat_page.dart';
import 'features/notification/screen/notification_page.dart';
import 'features/product/screen/medicine_page.dart';
import 'features/product/screen/detail_medicine_page.dart';
import 'package:provider/provider.dart';
import 'data/providers/all_products.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Product(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomePage(),
          '/profile': (context) => ProfilePage(),
          '/schedule': (context) => SchedulePage(),
          '/chat': (context) => ChatPage(),
          '/notification': (context) => NotificationPage(),
          '/medicine': (context) => MedicinePage(),
          DetailMedicinePage.routeName: (context) => DetailMedicinePage(),
        },
      ),
    );
  }
}
