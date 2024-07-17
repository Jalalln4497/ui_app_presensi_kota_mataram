import 'package:flutter/material.dart';
import 'profile_option/data_diri_screen.dart';
import 'profile_option/work_history.dart';
import 'profile_option/offline_work_history.dart';
import 'profile_option/ask_admin_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF008AE3),
          ),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/images/blob_haikei4.png"),
            fit: BoxFit.contain,
            alignment: Alignment.topLeft,
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 4.0, // Ketebalan border
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey,
                        backgroundImage:
                            AssetImage('assets/images/dr_arfi2.jpg'),
                        // child: Icon(
                        //   Icons.person,
                        //   size: 50,
                        //   color: Colors.white,
                        // ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Iman',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF008AE3),
                      ),
                    ),
                    const Text(
                      'NIK/NIP: dummy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.only(bottom: 10),
                children: [
                  ProfileOption(
                    icon: Icons.person,
                    title: 'Data Diri',
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  DataDiriScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(1.0, 0.0);
                            var end = Offset.zero;
                            var curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                  ProfileOption(
                    icon: Icons.history,
                    title: 'Riwayat hari kerja',
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const WorkHistoryScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(1.0, 0.0);
                            var end = Offset.zero;
                            var curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                  ProfileOption(
                    icon: Icons.history_toggle_off,
                    title: 'Riwayat hari kerja Offline',
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const OfflineWorkHistoryScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(1.0, 0.0);
                            var end = Offset.zero;
                            var curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                  ProfileOption(
                    icon: Icons.help,
                    title: 'Tanya Admin?',
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const AskAdminScreen(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = const Offset(1.0, 0.0);
                            var end = Offset.zero;
                            var curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  const Center(
                    child: Text(
                      'Versi 2.0.3',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  ProfileOption({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 1.0),
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 13.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 20.0,
          //     offset: Offset(0, 3),
          //   ),
          // ],
        ),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF363636)),
            const SizedBox(width: 15.0),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF363636),
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
