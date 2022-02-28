import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:peternakan_sapi/controllers/detail_cowController.dart';

import '../constants/constant.dart';
// import '../widgets/custom_back_button.dart';

class DetailSapiPage extends GetView {
  DetailSapiPage({Key? key, this.data}) : super(key: key);

  var currentUser = FirebaseAuth.instance.currentUser!.uid;
  var data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  "https://www.duniasapi.com/media/k2/items/cache/75b44b0e9c2e5d305fa323c6c51d3476_XL.jpg",
                  height: 250.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 30.0,
                  left: 15.0,
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.green,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.green,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30.0,
                  right: 15.0,
                  child: InkWell(
                    onTap: () => {},
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.green,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.green,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    height: 15.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 0.0,
                bottom: 15.0,
                left: 15.0,
                right: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['eartag'],
                    style: kTinyTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data['name'],
                        style: kNormalTitleTextStyle,
                      ),
                      InkWell(
                        onTap: () => Get.back(),
                        child: Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: Colors.green,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.green,
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.bedroom_baby,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Divider(
                    thickness: 0.3,
                    color: Colors.black54,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.yellow,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green,
                            ),
                            child: const Center(
                                child: Text('Informasi Sapi',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 20,
                                    ))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Nama:"),
                              const SizedBox(width: 70),
                              Text(
                                data['name'],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Eartag:"),
                              const SizedBox(
                                width: 70,
                              ),
                              Text(data['eartag']),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Kode:"),
                              const SizedBox(
                                width: 70,
                              ),
                              Text(data['code']),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Jenis Kelamin:"),
                              const SizedBox(
                                width: 70,
                              ),
                              Text(data['gender']),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Keturunan Dari:"),
                              const SizedBox(
                                width: 70,
                              ),
                              Text(data['breed']),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Tanggal Lahir:"),
                              const SizedBox(
                                width: 70,
                              ),
                              Text(data['birthdate']),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Gabung:"),
                              const SizedBox(
                                width: 70,
                              ),
                              Text(data['joinedwhen']),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text("Catatan:"),
                              const SizedBox(
                                width: 70,
                              ),
                              Text(data['note']),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.yellow,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            height: 30,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green,
                            ),
                            child: const Center(
                                child: Text('Riwayat Pencatatan',
                                    style: TextStyle(
                                      color: Colors.yellow,
                                      fontSize: 20,
                                    ))),
                          ),
                          StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection('cows')
                                .where('uid', isEqualTo: currentUser)
                                .snapshots(),
                            builder: (context,
                                AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                              if (streamSnapshot.hasData) {
                                return ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: streamSnapshot.data!.docs.length,
                                  itemBuilder: (context, index) {
                                    final DocumentSnapshot documentSnapshot =
                                        streamSnapshot.data!.docs[index];
                                    return Card(
                                      margin: const EdgeInsets.fromLTRB(
                                          10, 5, 5, 0),
                                      child: ListTile(
                                        leading: SizedBox(
                                            height: 70.0,
                                            width:
                                                70.0, // fixed width and height
                                            child: Image.network(
                                                "https://www.duniasapi.com/media/k2/items/cache/75b44b0e9c2e5d305fa323c6c51d3476_XL.jpg")),
                                        title: Text(documentSnapshot['name']
                                            .toString()),
                                        subtitle: Text(
                                            documentSnapshot['gender']
                                                .toString()),
                                        trailing: const SizedBox(
                                          width: 100,
                                        ),
                                        // onTap: () => Get.to()),
                                      ),
                                    );
                                  },
                                );
                              }
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
        
       
 



































    //     (
    //     child: SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           Stack(
    //             children: [
    //               Image.network(
    //                 "https://www.duniasapi.com/media/k2/items/cache/75b44b0e9c2e5d305fa323c6c51d3476_XL.jpg",
    //                 height: 250.0,
    //                 width: double.infinity,
    //                 fit: BoxFit.cover,
    //               ),
    //               Positioned(
    //                 top: 15.0,
    //                 left: 15.0,
    //                 child: InkWell(
    //                   onTap: () => Get.back(),
    //                   child: Container(
    //                     height: 30.0,
    //                     width: 30.0,
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(50.0),
    //                       color: Colors.green,
    //                       boxShadow: const [
    //                         BoxShadow(
    //                           color: Colors.green,
    //                           blurRadius: 4,
    //                         ),
    //                       ],
    //                     ),
    //                     child: const Icon(
    //                       Icons.arrow_back,
    //                       color: Colors.white,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               Positioned(
    //                 top: 15.0,
    //                 right: 15.0,
    //                 child: InkWell(
    //                   onTap: () => {},
    //                   child: Container(
    //                     height: 30.0,
    //                     width: 30.0,
    //                     decoration: BoxDecoration(
    //                       borderRadius: BorderRadius.circular(50.0),
    //                       color: Colors.green,
    //                       boxShadow: const [
    //                         BoxShadow(
    //                           color: Colors.green,
    //                           blurRadius: 4,
    //                         ),
    //                       ],
    //                     ),
    //                     child: const Icon(
    //                       Icons.settings,
    //                       color: Colors.white,
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               Positioned(
    //                 bottom: 0.0,
    //                 left: 0.0,
    //                 right: 0.0,
    //                 child: Container(
    //                   height: 15.0,
    //                   decoration: const BoxDecoration(
    //                     color: Colors.white,
    //                     borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(30.0),
    //                       topRight: Radius.circular(30.0),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.only(
    //               top: 0.0,
    //               bottom: 15.0,
    //               left: 15.0,
    //               right: 15.0,
    //             ),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 const Text(
    //                   "sadasdasd",
    //                   style: kTinyTitleTextStyle,
    //                 ),
    //                 const SizedBox(
    //                   height: 10.0,
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     const Text(
    //                       "Safik Details",
    //                       style: kNormalTitleTextStyle,
    //                     ),
    //                     InkWell(
    //                       onTap: () => Get.back(),
    //                       child: Container(
    //                         height: 30.0,
    //                         width: 30.0,
    //                         decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(50.0),
    //                           color: Colors.green,
    //                           boxShadow: const [
    //                             BoxShadow(
    //                               color: Colors.green,
    //                               blurRadius: 4,
    //                             ),
    //                           ],
    //                         ),
    //                         child: const Icon(
    //                           Icons.bedroom_baby,
    //                           color: Colors.white,
    //                         ),
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //                 const SizedBox(
    //                   height: 10.0,
    //                 ),
    //                 const Divider(
    //                   thickness: 0.3,
    //                   color: Colors.black54,
    //                 ),
    //                 const SizedBox(
    //                   height: 15.0,
    //                 ),
    //                 Container(
    //                   color: Colors.yellow,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Column(
    //                       children: [
    //                         Container(
    //                           height: 30,
    //                           width: 300,
    //                           decoration: BoxDecoration(
    //                             borderRadius: BorderRadius.circular(8),
    //                             color: Colors.green,
    //                           ),
    //                           child: const Center(
    //                               child: Text('Informasi Sapi',
    //                                   style: TextStyle(
    //                                     color: Colors.yellow,
    //                                     fontSize: 20,
    //                                   ))),
    //                         ),
    //                         const SizedBox(
    //                           height: 10,
    //                         ),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           children: const [
    //                             Text("nama:"),
    //                             SizedBox(width: 70),
    //                             Text("Safik"),
    //                           ],
    //                         ),
    //                         const SizedBox(
    //                           height: 10,
    //                         ),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           children: const [
    //                             Text("Nama:"),
    //                             SizedBox(
    //                               width: 70,
    //                             ),
    //                             Text("Safik"),
    //                           ],
    //                         ),
    //                         const SizedBox(
    //                           height: 10,
    //                         ),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           children: const [
    //                             Text("Eartag:"),
    //                             SizedBox(
    //                               width: 70,
    //                             ),
    //                             Text("Safik"),
    //                           ],
    //                         ),
    //                         const SizedBox(
    //                           height: 10,
    //                         ),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           children: const [
    //                             Text("Gender:"),
    //                             SizedBox(
    //                               width: 70,
    //                             ),
    //                             Text("Jantan"),
    //                           ],
    //                         ),
    //                         const SizedBox(
    //                           height: 10,
    //                         ),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           children: const [
    //                             Text("jenis:"),
    //                             SizedBox(
    //                               width: 70,
    //                             ),
    //                             Text("Limousin"),
    //                           ],
    //                         ),
    //                         const SizedBox(
    //                           height: 10,
    //                         ),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           children: const [
    //                             Text("Tanggal Lahir:"),
    //                             SizedBox(
    //                               width: 70,
    //                             ),
    //                             Text("17-05-2021"),
    //                           ],
    //                         ),
    //                         const SizedBox(
    //                           height: 10,
    //                         ),
    //                         Row(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           children: const [
    //                             Text("nama:"),
    //                             SizedBox(
    //                               width: 70,
    //                             ),
    //                             Text("Safik"),
    //                           ],
    //                         ),
    //                         const SizedBox(
    //                           height: 10,
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 StreamBuilder<Object>(
    //                     stream: null,
    //                     builder: (context, snapshot) {
    //                       return ListTile(
    //                         leading: SizedBox(
    //                             height: 70.0,
    //                             width: 70.0, // fixed width and height
    //                             child: Image.network(
    //                                 "https://www.duniasapi.com/media/k2/items/cache/75b44b0e9c2e5d305fa323c6c51d3476_XL.jpg")),
    //                         title: const Text('safik'),
    //                         subtitle: const Text('safik'),
    //                         trailing: const SizedBox(
    //                           width: 100,
    //                         ),
    //                         onTap: () => Get.to(const DetailSapiPage()),
    //                       );
    //                     }),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  // }
// }