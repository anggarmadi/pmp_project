import 'package:bimbingan_akademik/app/controllers/page_index_controller.dart';
import 'package:bimbingan_akademik/app/routes/app_pages.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/guidance_controller.dart';

class GuidanceView extends GetView<GuidanceController> {
  final pageC = Get.find<PageIndexController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        title: const Text('Riwayat Bimbingan Akademik'),
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFFFF),
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.GUIDANCE_DETAILS);
                },
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(15),
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
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.ADD_GUIDANCE);
        },
        child: Icon(Icons.add, color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Color(0xff008043),
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
