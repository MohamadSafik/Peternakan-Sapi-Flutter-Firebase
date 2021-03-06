import 'dart:io';

import 'package:flutter/material.dart';
import 'package:peternakan_sapi/models/cow.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controllers/add_cow_controller.dart';

//menggunakan getxview
class AddCowsPage extends StatelessWidget {
  AddCowsPage({Key? key}) : super(key: key);

  final controller = Get.find<AddCowController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('add sapi')), actions: [
        ElevatedButton(
            onPressed: () => controller.addCowModel(
                CowModel(
                    name: controller.name.text,
                    nomortag: controller.nomortag.text,
                    rasCow: controller.rasCow.text,
                    gender: controller.gender.text,
                    breed: controller.breed.text,
                    birthdate: controller.birthdate.text,
                    joinedwhen: controller.joinedwhen.text,
                    note: controller.note.text),
                child: const Text('simpan sapi')),
            child: Icon(Icons.add))
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              TextField(
                controller: controller.name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama",
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: controller.nomortag,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Eartag",
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                readOnly: true,
                controller: controller.rasCow,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Ras Sapi",
                  suffixIcon: PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      controller.rasCow.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return controller.ras
                          .map<PopupMenuItem<String>>((String value) {
                        return PopupMenuItem(child: Text(value), value: value);
                      }).toList();
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                readOnly: true,
                controller: controller.gender,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Jenis Kelamnin",
                  suffixIcon: PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      controller.gender.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return controller.items
                          .map<PopupMenuItem<String>>((String value) {
                        return PopupMenuItem(child: Text(value), value: value);
                      }).toList();
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: controller.breed,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Keturunan Dari",
                ),
              ),
              const SizedBox(height: 10),
              Obx(() => TextField(
                    readOnly: true,
                    controller: controller.birthdate
                      ..text = DateFormat(controller.dateformat)
                          .format(controller.selectedDate.value)
                          .toString(),
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.date_range),
                      border: OutlineInputBorder(),
                      labelText: "Tanggal Lahir",
                    ),
                    onTap: () {
                      controller.chooseDate;
                    },
                  )),
              const SizedBox(height: 10),
              Obx(() => TextField(
                    readOnly: true,
                    controller: controller.joinedwhen
                      ..text = DateFormat(controller.dateformat)
                          .format(controller.dateJoin.value)
                          .toString(),
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.date_range),
                      border: OutlineInputBorder(),
                      labelText: "Masuk Kandang Tanggal",
                    ),
                    onTap: () {
                      controller.choosejoin;
                    },
                  )),
              const SizedBox(height: 10),
              TextField(
                controller: controller.note,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Catatan Tambahan",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    controller.getImage();
                  },
                  child: GetBuilder<AddCowController>(
                    builder: (c) => controller.pickedImage != null
                        ? Column(
                            children: [
                              Container(
                                height: 200,
                                width: 400,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: FileImage(
                                          File(controller.pickedImage!.path),
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  controller.cancelImage();
                                },
                                child: const Text('Hapus'),
                              ),
                            ],
                          )
                        : Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(50)),
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[800],
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // persistentFooterButtons: [
      //   Center(
      //       child: SizedBox(
      //           height: 50,
      //           width: 240,
      //           child: ElevatedButton(
      //             onPressed: () => controller.addCowModel(
      //                 CowModel(
      //                     name: controller.name.text,
      //                     rasCow: controller.rasCow.text,
      //                     gender: controller.gender.text,
      //                     breed: controller.breed.text,
      //                     birthdate: controller.birthdate.text,
      //                     joinedwhen: controller.joinedwhen.text,
      //                     note: controller.note.text),
      //                 child: const Text('simpan sapi')),
      //             child: null,
      //           )))
      // ],
    );
  }
}

//   