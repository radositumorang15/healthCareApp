import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../data/providers/all_doctors.dart';
import 'dart:ui';

class DetailDoctorPage extends StatelessWidget {
  const DetailDoctorPage({super.key});

  static const routeName = '/detail-doctor';

  @override
  Widget build(BuildContext context) {
    final doctorId = ModalRoute.of(context)?.settings.arguments as String;
    final doctorData = Provider.of<AllDoctors>(context, listen: false);
    final doctor = doctorData.allDoctors.firstWhere(
      (doctor) => doctor.id == doctorId,
    );
    return Scaffold(
      backgroundColor: const Color(0xFFECF1EB),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color(0xFFECF1EB),
          centerTitle: true,
          title: const Text('Doctor Detail', style: TextStyle(fontSize: 20)),
          leading: Container(
            margin: const EdgeInsets.only(left: 10),
            child: Material(
              color: Colors.transparent,
              child: CircleAvatar(
                backgroundColor: const Color(0xFFF9FCF8),
                radius: 28,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  icon: const Icon(
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
              margin: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: const Color(0xFFF9FCF8),
                radius: 24,
                child: Consumer<AllDoctors>(
                  builder: (ctx, allDoctorsData, child) {
                    return IconButton(
                      icon: Icon(
                        doctor.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border_outlined,
                      ),
                      color: Colors.red,
                      onPressed: () {
                        doctorData.toggleFavorite(doctor);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 220,
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
              image: DecorationImage(
                image: NetworkImage(doctor.imageURL),
                fit: BoxFit.cover,
              ),

              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            doctor.name,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            doctor.specialization,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "180\$ Consultation Fee",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 14),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Container(
                          width: 500,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.7),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.black,
                                size: 28,
                              ),
                              Text(
                                "UK Medical Center",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                backgroundColor: const Color(0xFFF9FCF8),
                                radius: 28,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/notification',
                                    );
                                  },
                                  icon: Icon(
                                    Icons.message,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE4EDEE),
                                    borderRadius: BorderRadius.circular(50),
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
                                    size: 28,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: const Color(0xFFF9FCF8),
                                radius: 28,
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/notification',
                                    );
                                  },
                                  icon: Icon(
                                    Icons.notifications_outlined,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
