import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

import 'package:get/get.dart';

import '../controllers/add_guidance_controller.dart';

class AddGuidanceView extends GetView<AddGuidanceController> {
  const AddGuidanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'id';
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      appBar: AppBar(
        title: const Text('Bimbingan Akademik'),
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
                TextField(
                  autocorrect: false,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Masukan Perihal Bimbingan",
                    labelText: "Perihal",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelStyle: new TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xFF008043)),
                    ),
                    // prefixIcon: Icon(Icons.mail),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  autocorrect: false,
                  controller: controller.tanggalC,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: "Tanggal Bimbingan",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelStyle: new TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xFF008043)),
                    ),
                    prefixIcon: Icon(Icons.calendar_month_rounded),
                  ),
                  readOnly: true,
                  onTap: () async {
                    final date = await showDatePicker(
                        context: context,
                        firstDate: DateTime.now(),
                        initialDate: DateTime.now(),
                        lastDate: DateTime(2100));
                    if (date != null) {
                      initializeDateFormatting('id');
                      String hasil = DateFormat.yMMMMEEEEd().format(date);
                      controller.tanggalC.text = hasil;
                      print(date);
                    }
                  },
                ),
                SizedBox(height: 16),
                TextField(
                  autocorrect: false,
                  // textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Masukan Catatan Bimbingan",
                    labelText: "Catatan Bimbingan",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelStyle: new TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Color(0xFF008043)),
                    ),
                    // prefixIcon: Icon(Icons.mail),
                  ),
                  maxLines: null,
                  minLines: 4,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Tambah",
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
