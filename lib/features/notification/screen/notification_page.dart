import 'package:flutter/material.dart';
import '../../../navigation/layout_navbar.dart';
import 'dart:ui';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  final List<Map<String, dynamic>> notificationList = [
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '42m',
    },
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '1h',
    },
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '2h',
    },
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '2h',
    },
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '2h',
    },
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '2h',
    },
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '2h',
    },
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '2h',
    },
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '2h',
    },
    {
      'title': 'New Notification',
      'description': 'This is a new notification',
      'time': '2h',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF1EB),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(110),
        child: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color(0xFFECF1EB),
          centerTitle: true,
          title: Text('Notification', style: TextStyle(fontSize: 20)),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          leading: Container(
            margin: EdgeInsets.only(left: 10),
            child: Material(
              color: Colors.transparent,
              child: CircleAvatar(
                backgroundColor: const Color(0xFFF9FCF8),
                radius: 28,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: const Color(0xFFF9FCF8),
                radius: 24,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  icon: Icon(Icons.more_horiz, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(30),
                      border: Border(
                        top: BorderSide(
                          color: Colors.white.withValues(alpha: 0.5),
                          width: 1.5,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: DropdownButton(
                      isExpanded: true,
                      value: 'all',
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      dropdownColor: Colors.white,
                      icon: Icon(
                        Icons.arrow_drop_down_circle_sharp,
                        color: Colors.black,
                      ),
                      underline: const Divider(color: Colors.transparent),

                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      items: [
                        DropdownMenuItem(child: Text('All'), value: 'all'),
                        DropdownMenuItem(child: Text('Read'), value: 'read'),
                        DropdownMenuItem(child: Text('Unread'), value: 'unread'),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.9),
                      borderRadius: BorderRadius.circular(30),
                      border: Border(
                        top: BorderSide(
                          color: Colors.white.withValues(alpha: 0.5),
                          width: 1.5,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: DropdownButton(
                      isExpanded: true,
                      value: 'Filter',
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      dropdownColor: Colors.white,
                      icon: Icon(Icons.filter_list, color: Colors.black),
                      underline: const Divider(color: Colors.transparent),

                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      items: [
                        DropdownMenuItem(child: Text('All'), value: 'Filter'),
                        DropdownMenuItem(child: Text('Read'), value: 'reads'),
                        DropdownMenuItem(child: Text('Unread'), value: 'unreads'),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Mark All as Read',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.vertical,
              itemCount: notificationList.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.25),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.5),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.03),
                        blurRadius: 8,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ClipOval(
                        child: BackdropFilter(                          
                          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),

                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle, 
                              color: Colors.white.withValues(alpha: 0.3),

                              border: Border.all(
                                color: Colors.white.withValues(alpha: 0.5),
                                width: 1.5,
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.notifications_outlined,
                                size: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notificationList[index]['title'],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              notificationList[index]['description'],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        notificationList[index]['time'],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: LayoutNavbar(
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              // Already on Home
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/chat');
              break;
            case 2:
              // Add - belum ada halaman, bisa ditambahkan nanti
              break;
            case 3:
              // Records - belum ada halaman, bisa ditambahkan nanti
              Navigator.pushReplacementNamed(context, '/schedule');
            case 4:
              Navigator.pushReplacementNamed(context, '/profile');
              break;
            case 5:
              Navigator.pushReplacementNamed(context, '/medicine');
              break;
          }
        },
      ),
    );
  }
}
