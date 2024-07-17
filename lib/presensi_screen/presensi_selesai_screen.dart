import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';
import 'dart:async';

// class PresensiSelesaiScreen extends StatelessWidget {
//   const PresensiSelesaiScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Detail Page'),
//       ),
//       body: Center(
//         child: Text('Detail Page'),
//       ),
//     );
//   }
// }

class PresensiSelesaiScreen extends StatefulWidget {
  const PresensiSelesaiScreen({super.key});

  @override
  _PresensiPulangScreenState createState() => _PresensiPulangScreenState();
}

class _PresensiPulangScreenState extends State<PresensiSelesaiScreen> {
  bool isLoading = true;
  List<Map<String, String>> presenceData = [];

  @override
  void initState() {
    super.initState();
    // Simulate a network call
    Timer(const Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
        presenceData = [
          {
            'location': 'Taman Sangkareang',
            'address': 'Taman Sangkareang',
            'status': 'Anda di luar radius area ini',
            'color': 'red',
          },
          {
            'location': 'Sradha Bhakti',
            'address': 'Pura Sangkara Hyang',
            'status': 'Anda di luar radius area ini',
            'color': 'red',
          },
          {
            'location': 'Kantor Walikota Kota Mataram',
            'address': 'Jl. Pejanggik No.16',
            'status': 'Bagus, Anda dalam radius area ini',
            'color': 'green',
          },
          {
            'location': 'Dinas Kominfo',
            'address': 'Jl. Flamboyan No.1',
            'status': 'Bagus, Anda dalam radius area ini',
            'color': 'green',
          },
          {
            'location': 'Dinas Kominfo',
            'address': 'Jl. Flamboyan No.1',
            'status': 'Bagus, Anda dalam radius area ini',
            'color': 'green',
          },
        ];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Presensi',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF008AE3),
          ),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit_document,
              color: Color(0xFF008AE3),
              size: 25,
            ),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Presensi hari ini',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    '11/07/2024',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text(
                  'Pastikan untuk melakukan absen harian dan pulang sesuai jam kerja anda',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.green[400],
                    // color: Color(0xFF008AE3),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  child: isLoading
                      ? SkeletonItem(
                          child: Column(
                            children: [
                              SkeletonParagraph(
                                style: SkeletonParagraphStyle(
                                  lines: 1,
                                  spacing: 6,
                                  lineStyle: SkeletonLineStyle(
                                    // randomLength: true,
                                    height: 35,
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                // color: Colors.black.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 15,
                                offset: const Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.white.withOpacity(0.7),
                                spreadRadius: -5,
                                blurRadius: 15,
                                offset: const Offset(0, -5),
                              ),
                            ],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(14.0),
                            ),
                            color: Colors.green[400],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'Anda telah selesai bekerja hari ini. Sampai jumpa esok hari!!! Pulang cepat yaa...',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/images/checking_check_list.jpg"),
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
