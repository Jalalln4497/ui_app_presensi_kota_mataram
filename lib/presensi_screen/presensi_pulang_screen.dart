import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';
import 'package:ui_app_presensi_kota_mataram/presensi_screen/presensi_selesai_screen.dart';
import 'dart:async';

class PresensiPulangScreen extends StatefulWidget {
  const PresensiPulangScreen({super.key});

  @override
  _PresensiPulangScreenState createState() => _PresensiPulangScreenState();
}

class _PresensiPulangScreenState extends State<PresensiPulangScreen> {
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
            'image':
                'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWB4YN-e9v9mH9JQxRxc38GVmb5USJXARFFar-a8bq7ZkWPbgm6o0jhch0pk7BYIDx6G__-O6ozY1fL-1ISKV32_8fQjmepx3mN0I91eN9woCSlIruIm48rAIVFYXksLzG2-tQclQ6DOk/s1600/kecamatan+mataram+kota+mataram.jpg',
          },
          {
            'location': 'Sradha Bhakti',
            'address': 'Pura Sangkara Hyang',
            'status': 'Anda di luar radius area ini',
            'color': 'red',
            'image':
                'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWB4YN-e9v9mH9JQxRxc38GVmb5USJXARFFar-a8bq7ZkWPbgm6o0jhch0pk7BYIDx6G__-O6ozY1fL-1ISKV32_8fQjmepx3mN0I91eN9woCSlIruIm48rAIVFYXksLzG2-tQclQ6DOk/s1600/kecamatan+mataram+kota+mataram.jpg',
          },
          {
            'location': 'Kantor Walikota Kota Mataram',
            'address': 'Jl. Pejanggik No.16',
            'status': 'Bagus, Anda dalam radius area ini',
            'color': 'green',
            'image':
                'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWB4YN-e9v9mH9JQxRxc38GVmb5USJXARFFar-a8bq7ZkWPbgm6o0jhch0pk7BYIDx6G__-O6ozY1fL-1ISKV32_8fQjmepx3mN0I91eN9woCSlIruIm48rAIVFYXksLzG2-tQclQ6DOk/s1600/kecamatan+mataram+kota+mataram.jpg',
          },
          {
            'location': 'Dinas Kominfo',
            'address': 'Jl. Flamboyan No.1',
            'status': 'Bagus, Anda dalam radius area ini',
            'color': 'green',
            'image':
                'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWB4YN-e9v9mH9JQxRxc38GVmb5USJXARFFar-a8bq7ZkWPbgm6o0jhch0pk7BYIDx6G__-O6ozY1fL-1ISKV32_8fQjmepx3mN0I91eN9woCSlIruIm48rAIVFYXksLzG2-tQclQ6DOk/s1600/kecamatan+mataram+kota+mataram.jpg',
          },
          {
            'location': 'Dinas Kominfo',
            'address': 'Jl. Flamboyan No.1',
            'status': 'Bagus, Anda dalam radius area ini',
            'color': 'green',
            'image':
                'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWB4YN-e9v9mH9JQxRxc38GVmb5USJXARFFar-a8bq7ZkWPbgm6o0jhch0pk7BYIDx6G__-O6ozY1fL-1ISKV32_8fQjmepx3mN0I91eN9woCSlIruIm48rAIVFYXksLzG2-tQclQ6DOk/s1600/kecamatan+mataram+kota+mataram.jpg',
          },
          {
            'location': 'Dinas Kominfo',
            'address': 'Jl. Flamboyan No.1',
            'status': 'Bagus, Anda dalam radius area ini',
            'color': 'green',
            'image':
                'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWB4YN-e9v9mH9JQxRxc38GVmb5USJXARFFar-a8bq7ZkWPbgm6o0jhch0pk7BYIDx6G__-O6ozY1fL-1ISKV32_8fQjmepx3mN0I91eN9woCSlIruIm48rAIVFYXksLzG2-tQclQ6DOk/s1600/kecamatan+mataram+kota+mataram.jpg',
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
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFF3F6FD),
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFFD9E5FA),
                width: 2,
              ),
            ),
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xFF008AE3),
            ),
          ),
        ),
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
                                  'Anda telah absen masuk. Silahkan absen pulang sesuai jam kerja untuk menyelesaikan absen kerja hari ini.',
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
                : Container(
                    child: ListView.separated(
                      itemCount: presenceData.length,
                      itemBuilder: (context, index) {
                        final item = presenceData[index];
                        return PresenceTile(
                          location: item['location']!,
                          address: item['address']!,
                          status: item['status']!,
                          color: item['color'] == 'red'
                              ? const Color(0xFFFFEFEE)
                              : const Color(0xFFE9F8F1),
                          color_text_alert: item['color'] == 'red'
                              ? const Color(0xFFE33D33)
                              : const Color(0xFF34BD7C),
                          imageUrl: item['image']!,
                        );
                      },
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(left: 82.0, right: 16.0),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey[300],
                          height: 1,
                        ),
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class PresenceTile extends StatelessWidget {
  final String location;
  final String address;
  final String status;
  final Color? color;
  final Color? color_text_alert;
  final String imageUrl;

  PresenceTile({
    required this.location,
    required this.address,
    required this.status,
    this.color,
    this.color_text_alert,
    required this.imageUrl,
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
                    builder: (context) => const PresensiSelesaiScreen()),
              );
            },
            backgroundColor: const Color(0xFFD9E5FA),
            foregroundColor: const Color(0xFF008AE3),
            icon: Icons.check_circle,
            label: 'Absen Pulang!',
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
                    builder: (context) => const PresensiSelesaiScreen()),
              );
            },
            backgroundColor: const Color(0xFFD9E5FA),
            foregroundColor: const Color(0xFF008AE3),
            icon: Icons.check_circle,
            label: 'Absen Pulang!',
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
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
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(13.0),
                child: Image.network(
                  imageUrl,
                  width: 55,
                  height: 55,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 12,
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
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF66A1EA).withOpacity(0.1),
                            width: 2,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(14.0),
                          ),
                          color: color,
                        ),
                        child: Text(
                          status,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: color_text_alert,
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
    );
  }
}
