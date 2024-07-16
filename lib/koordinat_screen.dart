import 'package:flutter/material.dart';
import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';

class KoordinatScreen extends StatelessWidget {
  const KoordinatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Daftar Koordinat',
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
              Icons.refresh_rounded,
              color: Color(0xFF008AE3),
              size: 25,
            ),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
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
                    'Hari ini',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  Text(
                    '11/07/2024',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CoordinateList(),
            ),
          ],
        ),
      ),
      // body: const CoordinateList(),
    );
  }
}

class CoordinateList extends StatefulWidget {
  const CoordinateList({super.key});

  @override
  _CoordinateListState createState() => _CoordinateListState();
}

class _CoordinateListState extends State<CoordinateList> {
  List<Map<String, String>> coordinates = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchCoordinates();
  }

  Future<void> fetchCoordinates() async {
    // Simulasi pengambilan data dari internet atau API
    await Future.delayed(const Duration(seconds: 2), () {
      coordinates = [
        {
          'title': 'Taman Sangkareang',
          'address': 'Taman Sangkareang',
          'status': 'Aktif',
        },
        {
          'title': 'Sradha Bhakti',
          'address': 'Pura Sangkare Hyang',
          'status': 'Aktif',
        },
        {
          'title': 'Kantor Walikota Kota Mataram',
          'address': 'Jl. Pejanggik No.16',
          'status': 'Aktif',
        },
        {
          'title': 'Dinas Kominfo',
          'address': 'Jl. Flamboyan No.1',
          'status': 'Aktif',
        },
        {
          'title': 'Dinas Kominfo',
          'address': 'Jl. Flamboyan No.1',
          'status': 'Aktif',
        },
        {
          'title': 'Dinas Kominfo',
          'address': 'Jl. Flamboyan No.1',
          'status': 'Aktif',
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
                          margin: EdgeInsets.symmetric(vertical: 8.0),
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
                                        width: 80,
                                        height: 80),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: SkeletonParagraph(
                                      style: SkeletonParagraphStyle(
                                        lines: 3,
                                        spacing: 6,
                                        lineStyle: SkeletonLineStyle(
                                          randomLength: true,
                                          height: 10,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          minLength: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              6,
                                          maxLength: MediaQuery.of(context)
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
              itemCount: coordinates.length,
              itemBuilder: (context, index) {
                final coordinate = coordinates[index];
                return Container(
                  child: Card(
                    color: const Color(0xFFF3F6FD),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(
                        color: Color(0xFFD9E5FA),
                        width: 1.5,
                      ),
                    ),
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13.0),
                              child: Image.network(
                                'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhWB4YN-e9v9mH9JQxRxc38GVmb5USJXARFFar-a8bq7ZkWPbgm6o0jhch0pk7BYIDx6G__-O6ozY1fL-1ISKV32_8fQjmepx3mN0I91eN9woCSlIruIm48rAIVFYXksLzG2-tQclQ6DOk/s1600/kecamatan+mataram+kota+mataram.jpg',
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 13),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  coordinate['title']!,
                                  style: const TextStyle(
                                    color: Color(0xFF3892E5),
                                    // color: Color(0xFF87B2EE),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  coordinate['address']!,
                                  style: const TextStyle(
                                    color: Color(0xFF66A1EA),
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(height: 8),
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
                                        offset: const Offset(
                                            0, -5), // creates the light effect
                                      ),
                                    ],
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(14.0),
                                    ),
                                    color: Colors.green[400],
                                  ),
                                  child: Text(
                                    coordinate['status']!,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFF3F6FD),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
