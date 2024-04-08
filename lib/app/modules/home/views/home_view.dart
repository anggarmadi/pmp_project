import 'package:bimbingan_akademik/app/controllers/page_index_controller.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final pageC = Get.find<PageIndexController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('HomeView'),
        toolbarHeight: 8,
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black26,
                  radius: 30,
                  backgroundImage:
                      NetworkImage("https://ui-avatars.com/api/?name=upin"),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sukma Anggarmadi",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "2111527001",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Sistem Informasi",
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                    colors: [
                      const Color(0xFF00A254),
                      Color.fromARGB(255, 6, 105, 59),
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                    stops: [0.1, 1.0],
                    tileMode:
                        TileMode.clamp), // Change this to adjust corner radius
              ),
              width: Get.width,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF4DAE7F),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kartu Ujian",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.download, color: Colors.white),
                          label: Text("Cetak",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF008043),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.book, size: 40, color: Colors.white),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jumlah Kelas",
                                  style: TextStyle(color: Colors.white)),
                              Text(
                                "10",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 2,
                        height: 40,
                        color: Colors.white,
                      ),
                      Row(
                        children: [
                          Icon(Icons.note_add_rounded,
                              size: 40, color: Colors.white),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total Bimbingan",
                                  style: TextStyle(color: Colors.white)),
                              Text(
                                "7",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Daftar Kelas",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                TextButton(onPressed: () {}, child: Text("Lihat Semua"))
              ],
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.black26,
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://ui-avatars.com/api/?name=Mata-Kuliah"),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pemograman Multi Platfrom",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFCCE6D9),
                              ),
                              child: Text("3 SKS",
                                  style: TextStyle(color: Color(0xFF008043))),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Riwayat Bimbingan Akademik",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                TextButton(onPressed: () {}, child: Text("Lihat Semua"))
              ],
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Permohonan KP",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "22 April 2024",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ",
                        style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFFE2CC),
                        ),
                        child: Text(
                          "Belum diverifikasi",
                          style: TextStyle(color: Color(0xFFFF6F00)),
                        ),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        top: -6,
        height: 56,
        style: TabStyle.react,
        // backgroundColor: Color(0xffCCE6D9),
        backgroundColor: Colors.white,
        activeColor: Color(0xff008043),
        color: Colors.grey[400],
        items: [
          TabItem(icon: Icons.home, title: 'Beranda'),
          TabItem(icon: Icons.class_, title: 'Kelas'),
          TabItem(icon: Icons.note_add_rounded, title: 'Bimbingan'),
        ],
        initialActiveIndex: pageC.pageIndex.value,
        onTap: (int i) => pageC.changePage(i),
      ),
    );
  }
}
