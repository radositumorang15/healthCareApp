import 'package:flutter/material.dart';

class ScheduleTabbar extends StatelessWidget {
  const ScheduleTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBar(
    tabs: <Widget>[
              Tab(icon: Icon(Icons.cloud_outlined)),
              Tab(icon: Icon(Icons.beach_access_sharp)),
              Tab(icon: Icon(Icons.brightness_5_sharp)),
            ],
            
    );
  }
}
