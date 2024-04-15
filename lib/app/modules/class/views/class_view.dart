import 'package:bimbingan_akademik/app/controllers/page_index_controller.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/class_controller.dart';

class ClassView extends GetView<ClassController> {
  final pageC = Get.find<PageIndexController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        title: const Text('List Kelas Diikuti'),
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFFFFFFF),
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
