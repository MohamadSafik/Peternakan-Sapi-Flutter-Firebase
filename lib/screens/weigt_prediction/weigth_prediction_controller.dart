import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peternakan_sapi/constants/firebase_constants.dart';

class WeightPredictionController extends GetxController {
  late TextEditingController weight = TextEditingController();
  double firstFieldValue = 0.toDouble();
  double secondFieldValue = 0.toDouble();

  editCow(
    String weight,
    String docID,
  ) async {
    DocumentReference cows = firestore.collection("cows").doc(docID);

    try {
      await cows.update({
        // "uid": FirebaseAuth.instance.currentUser!.uid,

        "weight": weight,
      });
      Get.defaultDialog(
        title: "berhasil",
        middleText: "berhasil edit sapi",
        onConfirm: () {
          Get.back();
          Get.back();
        },
        textConfirm: "okay",
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      Get.defaultDialog(
        title: "terjadi kesalahan",
        middleText: "tidak berhasil edit sapi",
      );
    }
  }
}