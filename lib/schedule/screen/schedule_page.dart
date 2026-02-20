import 'package:flutter/material.dart';

import '../tabs/completed_tab.dart';
import '../tabs/canceled_tab.dart';
import '../../navigation/layout_navbar.dart';
import '../tabs/schedule_tab.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF1EB),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color(0xFFECF1EB),
          centerTitle: true,
          title: Text('Schedule', style: TextStyle(fontSize: 20)),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TabBar(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  indicatorSize: TabBarIndicatorSize.tab,
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicator: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  dividerColor: Colors.transparent,
                  tabs: const [
                    Tab(text: 'Upcoming'),
                    Tab(text: 'Completed'),
                    Tab(text: 'Cancelled'),
                  ],
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
      body: TabBarView(
        controller: _tabController,
        children: [
          // Tab 1: Upcoming (Halaman Schedule Utama)
          ScheduleTab(),
          // Tab 2: Completed
          CompletedTab(),
          // Tab 3: Cancelled
          CanceledTab(),
        ],
      ),
      bottomNavigationBar: LayoutNavbar(
        currentIndex: 3,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/home');
              break;
            case 1:
              Navigator.pushReplacementNamed(context, '/chat');
              break;
            case 2:
              // Add - belum ada halaman, bisa ditambahkan nanti
              break;
            case 3:
              // Already on Schedule
              break;
            case 4:
              Navigator.pushReplacementNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }


 
}
