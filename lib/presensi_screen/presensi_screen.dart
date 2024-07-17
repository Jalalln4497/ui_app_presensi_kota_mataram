import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';
import 'package:ui_app_presensi_kota_mataram/presensi_screen/presensi_pulang_screen.dart';
import 'dart:async';

class PresensiScreen extends StatefulWidget {
  const PresensiScreen({super.key});

  @override
  _PresensiScreenState createState() => _PresensiScreenState();
}

class _PresensiScreenState extends State<PresensiScreen> {
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
                            color: Colors.red[400],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.warning_amber_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Anda belum absen hari ini! ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
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
            child: isLoading
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (context, index) {
                              return Card(
                                color: Colors.white,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: const BorderSide(
                                    color: Color(0xFFD9E5FA),
                                    width: 1.5,
                                  ),
                                ),
                                child: SkeletonItem(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        const SkeletonAvatar(
                                          style: SkeletonAvatarStyle(
                                              shape: BoxShape.rectangle,
                                              width: 100,
                                              height: 110),
                                        ),
                                        const SizedBox(width: 8),
                                        Expanded(
                                          child: SkeletonParagraph(
                                            style: SkeletonParagraphStyle(
                                              lines: 4,
                                              spacing: 6,
                                              lineStyle: SkeletonLineStyle(
                                                randomLength: true,
                                                height: 10,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                minLength:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        6,
                                                maxLength:
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        3,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: presenceData.length,
                    itemBuilder: (context, index) {
                      final item = presenceData[index];
                      return PresenceCard(
                        location: item['location']!,
                        address: item['address']!,
                        status: item['status']!,
                        color: item['color'] == 'red'
                            ? Colors.red[400]
                            : Colors.green[400],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class PresenceCard extends StatelessWidget {
  final String location;
  final String address;
  final String status;
  final Color? color;

  PresenceCard({
    required this.location,
    required this.address,
    required this.status,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(location),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PresensiPulangScreen()),
              );
            },
            foregroundColor: const Color(0xFF008AE3),
            icon: Icons.check_circle,
            label: 'Check in cepat',
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PresensiPulangScreen()),
              );
            },
            foregroundColor: const Color(0xFF008AE3),
            icon: Icons.check_circle,
            label: 'Check in cepat',
          ),
        ],
      ),
      child: Card(
        color: const Color(0xFFF3F6FD),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: const BorderSide(
            color: Color(0xFFD9E5FA),
            width: 1.5,
          ),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(13.0),
                  child: Image.network(
                    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWB4YN-e9v9mH9JQxRxc38GVmb5USJXARFFar-a8bq7ZkWPbgm6o0jhch0pk7BYIDx6G__-O6ozY1fL-1ISKV32_8fQjmepx3mN0I91eN9woCSlIruIm48rAIVFYXksLzG2-tQclQ6DOk/s1600/kecamatan+mataram+kota+mataram.jpg',
                    width: 100,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF3892E5),
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      address,
                      style: const TextStyle(
                        color: Color(0xFF66A1EA),
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(bottom: 8),
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
                        color: color,
                      ),
                      child: Text(
                        status,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF3F6FD),
                          fontSize: 10,
                        ),
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.info_outline_rounded,
                          color: Color(0xFFEF5350),
                          size: 20,
                        ),
                        SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            'Pastikan datang tepat waktu agar absen tidak tercatat terlambat',
                            style: TextStyle(
                              color: Color(0xFFEF5350),
                              fontSize: 10,
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
        ),
      ),
    );
  }
}
