import 'package:flutter/material.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';

class WorkHistoryScreen extends StatelessWidget {
  const WorkHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF008AE3),
        surfaceTintColor: const Color(0xFF008AE3),
        toolbarHeight: 70,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(28),
          ),
        ),
        title: const Text(
          'Riwayat Kerja',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, color: Color(0xFF008AE3)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        centerTitle: true,
      ),
      // body: const RiwayatKerjaList(),
      body: Container(
        color: Colors.white,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Short By',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    'Bulan ini',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
            Expanded(
              child: RiwayatKerjaList(),
            ),
          ],
        ),
      ),
    );
  }
}

class RiwayatKerjaList extends StatefulWidget {
  const RiwayatKerjaList({super.key});

  @override
  _RiwayatKerjaListState createState() => _RiwayatKerjaListState();
}

class _RiwayatKerjaListState extends State<RiwayatKerjaList> {
  List<Map<String, String>> riwayatKerja = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchRiwayatKerja();
  }

  Future<void> fetchRiwayatKerja() async {
    // Simulasi pengambilan data dari internet atau API
    await Future.delayed(const Duration(seconds: 2), () {
      riwayatKerja = [
        {
          'status': 'masuk',
          'jam': '09:05:04',
          'tanggal': '04-07-2024',
          'catatan': '09:05:28',
        },
        {
          'status': 'masuk',
          'jam': '08:39:25',
          'tanggal': '08-07-2024',
          'catatan': 'Tidak tercatat',
        },
        {
          'status': 'masuk',
          'jam': '08:39:25',
          'tanggal': '08-07-2024',
          'catatan': 'Tidak tercatat',
        },
        {
          'status': 'masuk',
          'jam': '08:39:25',
          'tanggal': '08-07-2024',
          'catatan': 'Tidak tercatat',
        },
        {
          'status': 'masuk',
          'jam': '08:39:25',
          'tanggal': '08-07-2024',
          'catatan': 'Tidak tercatat',
        },
        {
          'status': 'masuk',
          'jam': '08:39:25',
          'tanggal': '08-07-2024',
          'catatan': 'Tidak tercatat',
        },
        {
          'status': 'masuk',
          'jam': '08:39:25',
          'tanggal': '08-07-2024',
          'catatan': 'Tidak tercatat',
        },
        {
          'status': 'masuk',
          'jam': '08:39:25',
          'tanggal': '08-07-2024',
          'catatan': 'Tidak tercatat',
        },
        {
          'status': 'masuk',
          'jam': '08:39:25',
          'tanggal': '08-07-2024',
          'catatan': 'Tidak tercatat',
        },
      ];

      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: isLoading
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
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            side: const BorderSide(
                              color: Color(0xFFD9E5FA),
                              width: 1.5,
                            ),
                          ),
                          child: SkeletonItem(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SkeletonLine(
                                        style: SkeletonLineStyle(
                                          height: 16,
                                          width: 50,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      SkeletonLine(
                                        style: SkeletonLineStyle(
                                          height: 14,
                                          width: 80,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SkeletonLine(
                                        style: SkeletonLineStyle(
                                          height: 16,
                                          width: 80,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      SkeletonLine(
                                        style: SkeletonLineStyle(
                                          height: 14,
                                          width: 60,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
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
              padding: const EdgeInsets.all(16),
              itemCount: riwayatKerja.length,
              itemBuilder: (context, index) {
                final item = riwayatKerja[index];
                return Card(
                  color: const Color(0xFFF3F6FD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    side: const BorderSide(
                      color: Color(0xFFD9E5FA),
                      width: 1.5,
                    ),
                  ),
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 15,
                                    offset: const Offset(
                                        0, 5), // changes position of shadow
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
                                color: const Color(0xFF66BB6A),
                              ),
                              child: Text(
                                item['status']!,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFF3F6FD),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              item['jam']!,
                              style: const TextStyle(
                                color: Color(0xFF66BB6A),
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              item['tanggal']!,
                              style: const TextStyle(
                                color: Color(0xFF66A1EA),
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Text(
                                  item['catatan']!,
                                  style: const TextStyle(
                                    color: Color(0xFF66A1EA),
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                const Icon(
                                  Icons.home,
                                  size: 18,
                                  color: Color(0xFF008AE3),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
