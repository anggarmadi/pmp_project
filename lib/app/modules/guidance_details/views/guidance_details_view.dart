import 'package:bimbingan_akademik/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/guidance_details_controller.dart';

class GuidanceDetailsView extends GetView<GuidanceDetailsController> {
  const GuidanceDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        title: const Text('Detail Bimbingan'),
        centerTitle: true,
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Belum diverifikasi",
                  style: TextStyle(color: Color(0xFFFF6F00)),
                ),
                SizedBox(height: 16),
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
                SizedBox(height: 16),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco ",
                  style: TextStyle(),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.EDIT_GUIDANCE),
                  child: Text(
                    "Ubah",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF008043),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    minimumSize: Size(Get.width, 50),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
