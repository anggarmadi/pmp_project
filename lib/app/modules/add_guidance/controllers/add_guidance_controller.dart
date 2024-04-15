import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddGuidanceController extends GetxController {
  TextEditingController tanggalC = TextEditingController();
  // Future<Null> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //       context: context,
  //       initialDate: DateTime.now(),
  //       firstDate: DateTime(1901, 1),
  //       lastDate: DateTime(2100));
  //   if (picked != null && picked != selectedDate) {
  //     selectedDate = picked;
  //     String convertedDateTime =
  //         "${picked.year.toString()}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}";
  //     // widget.textController.value = TextEditingValue(text: picked.toString());
  //     widget.textController.value = TextEditingValue(text: convertedDateTime);
  //     ;
  //   }
  // }
}
