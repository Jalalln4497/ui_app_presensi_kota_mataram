import 'package:flutter/material.dart';

class DataDiriScreen extends StatelessWidget {
  final Map<String, dynamic> profile = {
    "Identitas Pribadi": {
      "Nama": "iman",
      "NIK": "dummy",
      "NIP": "dummy",
      "Tempat, Tgl. Lahir": "Lombok Timur, 1994-12-31",
      "Jenis Kelamin": "P",
      "Golongan Darah": "(tidak diisi)"
    },
    "Status Kepegawaian": {"Status": "PNS", "Karpeg": "(tidak diisi)"},
    "Riwayat CPNS dan PNS": {
      "CPNS Gol.": "II/a",
      "TMT. CPNS": "2011-01-01",
      "TMT. PNS": "2012-07-01"
    },
    "Jabatan dan Unit Kerja": {
      "Golongan, Pangkat": "II/d. Pengatur Tk.I",
      "Unit Kerja": "OPD Dummy",
      "Eselon": "JFU",
      "Jabatan": "PENGELOLA PROGRAM DAN KEGIATAN"
    },
    "Informasi Tambahan": {
      "Angka Kredit": "(tidak diisi)",
      "Telepon": "dummy",
      "Email": "dummy@mail.com",
      "Tunjangan": "Tunjangan Disiplin (40%) Rp. 0",
      "Potongan": "Rp. 0 (16%)"
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xFF008AE3),
            surfaceTintColor: const Color(0xFF008AE3),
            toolbarHeight: 70,
            pinned: true,
            floating: false,
            expandedHeight: 50.0,
            shadowColor: const Color(0xFF363636),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(28),
              ),
            ),
            title: const Text(
              'Data Diri',
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
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Transform.translate(
                  offset: const Offset(0, -27),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image:
                            AssetImage("assets/images/blob_scene_haikei2.png"),
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: Column(
                      children: [
                        const ProfileHeader(),
                        const SizedBox(height: 16),
                        ...profile.entries.map((entry) {
                          return ProfileCard(
                              category: entry.key, data: entry.value);
                        }).toList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 70, bottom: 30),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFF3F6FD),
                  width: 7.0, // Ketebalan border
                ),
              ),
              child: const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/images/dr_arfi2.jpg'),
                // backgroundImage: AssetImage('assets/images/profile_3x4.jpg'),
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
                // color: Color(0xFF363636),
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
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String category;
  final Map<String, dynamic> data;

  const ProfileCard({required this.category, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: const BorderSide(
          color: Color(0xFFEBEBEB),
          width: 1.5,
        ),
      ),
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              category,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF008AE3),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              children: data.entries.map((entry) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              entry.key,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          const SizedBox(width: 7),
                          Expanded(
                            flex: 2,
                            child: Text(
                              entry.value,
                              // ' : ${entry.value}',
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (entry.key != data.keys.last)
                      Divider(color: Colors.grey[300]),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
