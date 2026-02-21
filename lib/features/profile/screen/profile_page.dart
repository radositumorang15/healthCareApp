import 'package:flutter/material.dart';
import '../../../navigation/layout_navbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFECF1EB),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFDAF4EC), Color(0xFFFBF2C6)],
                  ),
                ),
              ),

              SingleChildScrollView(
                padding: const EdgeInsets.only(top: 130),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              'https://picsum.photos/id/20/100/100',
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Galangal Richard",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "galangal82@gmail.com",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE4EDEE),
                              borderRadius: BorderRadius.circular(50),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFF5D37A), Color(0xFF57C785)],
                                stops: [0.0, 1.0],
                              ),
                            ),
                            child: const Icon(
                              Icons.edit_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Tombol Back
                      CircleAvatar(
                        backgroundColor: const Color(0xFFF9FCF8),
                        radius: 28,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 25,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // Sekarang pasti bisa diklik
                            if (Navigator.canPop(context)) {
                              Navigator.pop(context);
                            } else {
                              print(
                                "Tombol Back Ditekan (Tidak ada route sebelumnya)",
                              );
                            }
                          },
                        ),
                      ),

                      const Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xFFF9FCF8),
                        radius: 28,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.person_3_outlined,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Account Settings",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey[300], thickness: 1, height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.wallet,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Payment Method",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.health_and_safety_outlined,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Care Coordination",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey[300], thickness: 1, height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.favorite_border_rounded,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Favourite Doctors",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey[300], thickness: 1, height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.medical_information_outlined,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Medical All History",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.grey[300], thickness: 1, height: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.grey[300],
                          child: Icon(
                            Icons.help_outline_rounded,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Help & Support",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.red[100],
                          child: Icon(
                            Icons.logout_outlined,
                            size: 25,
                            color: Colors.red,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Logout",
                              style: TextStyle(fontSize: 18, color: Colors.red),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: LayoutNavbar(
        currentIndex: 4,
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
              Navigator.pushReplacementNamed(context, '/schedule');
              break;
            case 4:
              // Already on Profile
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
