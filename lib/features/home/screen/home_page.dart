import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../navigation/layout_navbar.dart';

class HomePage extends StatelessWidget {
  // Daftar warna menarik untuk icon
  final List<Color> _iconColors = [
    const Color(0xFF5FCD84), // Green
    const Color(0xFF4A90E2), // Blue
    const Color(0xFFE74C3C), // Red
    const Color(0xFFF39C12), // Orange
    const Color(0xFF9B59B6), // Purple
    const Color(0xFF1ABC9C), // Turquoise
    const Color(0xFFE67E22), // Dark Orange
    const Color(0xFF3498DB), // Light Blue
  ];

  // Fungsi untuk mendapatkan warna berdasarkan index (konsisten)
  Color _getRandomColor(int index) {
    return _iconColors[index % _iconColors.length];
  }

  final List<Map<String, dynamic>> dates = [
    {'day': 'Wed', 'date': '18'},
    {'day': 'Thu', 'date': '19'},
    {'day': 'Fri', 'date': '20'},
    {'day': 'Sat', 'date': '21'},
    {'day': 'Sun', 'date': '22'},
    {'day': 'Mon', 'date': '23'},
    {'day': 'Tue', 'date': '24'},
  ];

  final List<Map<String, dynamic>> services = [
    {'icon': Icons.local_hospital, 'name': 'Hospital'},
    {'icon': Icons.medical_information, 'name': 'Consul'},

    {'icon': Icons.medical_services, 'name': 'Services'},
    {'icon': Icons.medication, 'name': 'Medicine'},
  ];

  final List<Map<String, dynamic>> doctors = [
    {
      'name': 'Dr. John Doe',
      'specialization': 'Cardiologist',
      'image': 'https://picsum.photos/id/27/100/100',
      'schedule': '20 September 2025 - 10:00 - 13:00 AM',
    },
    {
      'name': 'Dr. Jane Doe',
      'specialization': 'Cardiologist',
      'image': 'https://picsum.photos/id/28/100/100',
      'schedule': '21 September 2025 - 10:00 - 11:00 AM',
    },
    {
      'name': 'Dr. Jim Doe',
      'specialization': 'Cardiologist',
      'image': 'https://picsum.photos/id/20/100/100',
      'schedule': '22 September 2025 - 10:00 - 11:00 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF1EB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFECF1EB),
        leading: Container(
          // padding: EdgeInsets.all(2),
          margin: EdgeInsets.only(left: 10),
          child: Material(
            color: Colors.transparent, // Agar background transparan
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/profile');

              },
              customBorder: const CircleBorder(),

              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage('https://picsum.photos/id/20/100/100'),
              ),
            ),
          ),
        ),
        // titleSpacing: 10,
        centerTitle: false,
        actions: [
          Container(
            // padding: EdgeInsets.all(2),
            margin: EdgeInsets.only(right: 10),
            width: 50,
            height: 50,
            child: CircleAvatar(
              backgroundColor: const Color(0xFFF9FCF8),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/notification');
                },
                icon: Icon(Icons.notifications_outlined, color: Colors.black),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintStyle: TextStyle(color: Colors.grey),
                hintText: 'Search by doctors name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(40),
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),

                suffixIcon: Icon(Icons.search, color: Colors.grey),
              ),
              onSubmitted: (value) {},
            ),
          ),
        ),
        flexibleSpace: SizedBox(height: 50, width: 50),
      ),
      body: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Selamat Datang, Galangal Richard',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat('EEE, d MMM yyyy, HH:mm').format(DateTime.now()),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(12),

                decoration: BoxDecoration(
                  color: const Color(0xFFFCFCF9),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFECF1EB), width: 2),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 90,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dates.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              width: 45,
                              decoration: BoxDecoration(
                                color: Colors.amber[700],
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    dates[index]['day'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 16),

                                  CircleAvatar(
                                    radius: 18,
                                    backgroundColor: const Color(0xFFFCFCF9),

                                    child: Text(
                                      dates[index]['date'],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 20),

                    SizedBox(
                      height: 110,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        itemCount: doctors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 115,
                            margin: const EdgeInsets.only(right: 9),
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5E7F5),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: const Color(0xFFECF1EB),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 18,
                                      backgroundImage: NetworkImage(
                                        doctors[index]['image'],
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 45,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFCFCF9),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: const Color(0xFFECF1EB),
                                          width: 2,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellow,
                                            size: 12,
                                          ),
                                          Text(
                                            '4.8',
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  doctors[index]['name'],
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  doctors[index]['specialization'],
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              SizedBox(
                height: 64,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: services.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFCFCF9),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: const Color(0xFFECF1EB),
                            width: 2,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(width: 4),
                            CircleAvatar(
                              radius: 23,
                              backgroundColor: const Color(0xFFE4EDEE),
                              child: Icon(
                                services[index]['icon'],
                                color: _getRandomColor(index),
                                size: 18,
                              ),
                            ),
                            SizedBox(width: 6),
                            Text(
                              services[index]['name'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 20),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upcoming Appointments',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View All',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(15),
                    scrollDirection: Axis.vertical,
                    itemCount: doctors.length,
                    itemBuilder: (context, index) {
                          // return ListTile(
                          //   title: Text(doctors[index]['name']),
                          //   subtitle: Text(doctors[index]['specialization']),
                          //   trailing: Text(doctors[index]['schedule']),
                          // );
                          return Container(
                            padding: const EdgeInsets.all(16),
                            margin: const EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFCFCF9),
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundImage: NetworkImage(
                                        doctors[index]['image'] ?? '',
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          doctors[index]['name'],
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          doctors[index]['specialization'],
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 22,
                                          backgroundColor: const Color(
                                            0xFFE4EDEE,
                                          ),
                                          child: Icon(
                                            Icons.chat_bubble_outline,
                                            size: 20,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        const SizedBox(width: 12),

                                        Center(
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFE4EDEE),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color(0xFFF5D37A),
                                                  Color(0xFF57C785),
                                                ],
                                                stops: [0.0, 1.0],
                                              ),
                                            ),
                                            child: Icon(
                                              Icons.call,
                                              size: 20,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Text(
                                    doctors[index]['schedule'],
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                ],
              ),
            ],
          ),
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
          }
        },
      ),
    );
  }
}
