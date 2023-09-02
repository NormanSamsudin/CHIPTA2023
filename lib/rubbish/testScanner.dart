// import 'dart:io';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:flutter_tflite/flutter_tflite.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/brown_planthopper.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/chili_leaf_spot.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/chili_whitefly.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/green_leafhopper.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/rice_leaf_blast.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/rice_brown_spot.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/corn_common_rust.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/corn_northern_leaf_blight.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/chili_leaf_curl.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/tomato_early_blight.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/tomato_septoria_leaf_spot.dart';
// import 'package:mykebun_detect_disease/screen/scanner_disease/tomato_yellow_leaf_curl_virus.dart';
// import 'package:mykebun_detect_disease/widget/shop.dart';




// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyStack(),
//     );
//   }
// }

// class MyStack extends StatefulWidget {
//   const MyStack({super.key});

//   @override
//   State<MyStack> createState() => _MyStackState();
// }

// class _MyStackState extends State<MyStack> {
//   int _page = 1;

//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

//   File? _imageFile;

//   List? _classifiedResult;

//   //final picker = ImagePicker();
//   @override
//   void initState() {
//     super.initState();
//     loadImageModel();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Color.fromRGBO(196, 247, 161, 1),
//           title: Row(
//             children: [
//               //SizedBox(width: 0,),
//               ImageIcon(AssetImage("lib/assets/images/icon-mykebun.png"), size: 40, color: Colors.black,),
//               SizedBox(width: 10,),
//               Text(
//                 "Crop Pest & Disease Detection",
//                 style: TextStyle(color: Colors.black),
//               )
//             ],
//           )
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Container(
//               width: 420,
//               height: 100,
//               color: Color.fromRGBO(196, 247, 161, 1),
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 45,
//                   ),
//                   Container(
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Image.asset(
//                             "lib/assets/images/farmer.png",
//                             width: 80,
//                             height: 80,
//                           ),
//                         ],
//                       )),
//                   SizedBox(
//                     width: 25,
//                   ),
//                   Container(
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           children: [
//                             Text("Spotting pest &",
//                                 style: GoogleFonts.plusJakartaSans(
//                                     fontSize: 23,
//                                     fontWeight: FontWeight.w500)),
//                             SizedBox(
//                               width: 52,
//                             ),
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Text("disease like a ",
//                                 style: GoogleFonts.plusJakartaSans(
//                                     fontSize: 23,
//                                     fontWeight: FontWeight.w500,
//                                     wordSpacing: 2.5)),
//                             Text("PRO!",
//                                 style: GoogleFonts.dancingScript(
//                                     fontSize: 27,
//                                     fontWeight: FontWeight.w500,
//                                     decoration: TextDecoration.underline)),
//                             SizedBox(
//                               width: 17,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             //     child: Container(
//             //       width: 340,
//             //       height: 300,
//             //       color: Colors.blue,
//             //
//             // )
//             Container(
//               //margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
//               width: 360,
//               height: 335,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(30),
//                 ),
//                 border: Border.all(color: Colors.white),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black12,
//                     offset: Offset(2, 2),
//                     spreadRadius: 2,
//                     blurRadius: 1,
//                   ),
//                 ],
//               ),
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: 13,
//                       ),
//                       Container(
//                         width: 160.0,
//                         height: 150.0,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.black,
//                             width: 2.0,
//                           ),
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Image.asset(
//                                   "lib/assets/images/one.png",
//                                   width: 28,
//                                   height: 28,
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 50,
//                                 ),
//                                 Image.asset(
//                                   "lib/assets/images/camera-plant.png",
//                                   width: 60,
//                                   height: 60,
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 18,
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 30,
//                                 ),
//                                 Text(
//                                   "Take a picture",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         width: 160.0,
//                         height: 150.0,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.black,
//                             width: 2.0,
//                           ),
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Image.asset(
//                                   "lib/assets/images/two.png",
//                                   width: 28,
//                                   height: 28,
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 45,
//                                 ),
//                                 Image.asset(
//                                   "lib/assets/images/diagnosis.png",
//                                   width: 70,
//                                   height: 70,
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 13,
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 25,
//                                 ),
//                                 Text(
//                                   "View diagnosis",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: 13,
//                       ),
//                       Container(
//                         width: 330.0,
//                         height: 150.0,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             color: Colors.black,
//                             width: 2.0,
//                           ),
//                           borderRadius: BorderRadius.circular(20.0),
//                         ),
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               height: 5,
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Image.asset(
//                                   "lib/assets/images/three.png",
//                                   width: 28,
//                                   height: 28,
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 135,
//                                 ),
//                                 Image.asset(
//                                   "lib/assets/images/treatment.png",
//                                   width: 60,
//                                   height: 60,
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 19,
//                             ),
//                             Row(
//                               children: [
//                                 SizedBox(
//                                   width: 65,
//                                 ),
//                                 Text(
//                                   "Get treatment for your crop",
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                 ],
//               ),
//             ),

//             Container(
//               height: 80,
//               width: 335,
//               //color: Colors.grey,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                   ),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       //primary: Color.fromRGBO(78, 139, 49, 1),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(
//                             20.0), // Adjust the value for desired roundness
//                       ),
//                       fixedSize: Size(200,
//                           50.0), // Adjust the width and height as needed
//                     ),
//                     onPressed: () {
//                       _showImageSourceDialog();
//                     },
//                     child: Row(
//                       children: [
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Text(
//                           "Take a Picture",
//                           style: TextStyle(color: Colors.black, fontSize: 15),
//                           // style: GoogleFonts.lexend(
//                           //     fontSize: 16,
//                           //     fontWeight: FontWeight.w400,
//                           //     fontStyle: FontStyle.normal,
//                           //     color: Colors.white),
//                         ),
//                         SizedBox(
//                           width: 5,
//                         ),
//                         Icon(
//                           Icons.camera_alt_outlined,
//                           color: Colors.black,
//                           //size: 30.0,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//           ],
//         )
//       ),

//         bottomNavigationBar: CurvedNavigationBar(
//           items: [
//             CurvedNavigationBarItem(
//               child: ImageIcon(
//                 AssetImage("lib/assets/images/scan-plant.png"),
//                 size: 30,
//               ),
//               //child: ImageIcon(AssetImage("lib/assets/images/camera-plant.png"),),
//               label: 'Scanner',
//             ),
//             CurvedNavigationBarItem(
//               child: Icon(
//                 Icons.home_outlined,
//                 size: 28,
//               ),
//               label: 'Dashboard',
//             ),
//             CurvedNavigationBarItem(
//               child: Icon(Icons.shopping_bag_outlined),
//               label: 'Shop',
//             ),
//           ],
//             onTap: (index) {
//               //todo implement transition to other screens
//               // print(index);
//               if (index == 0) {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => MyApp(),
//                   ),
//                 );
//               }
//               // if (index == 1) {
//               //   Navigator.push(
//               //     context,
//               //     MaterialPageRoute(
//               //       builder: (context) => HomeScreen(),
//               //     ),
//               //   );
//               // }
//               if (index == 2) {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Shop(),
//                   ),
//                 );
//               }
//             },
//             index: 0,
//             color: Color.fromRGBO(216, 221, 239, 1),
//             buttonBackgroundColor: Color.fromRGBO(216, 221, 239, 1),
//             backgroundColor: Colors.white,
//             animationCurve: Curves.easeInOut,
//             animationDuration: Duration(milliseconds: 600),
//         ),
//     );
//   }

//   //     bottomNavigationBar: CurvedNavigationBar(
//   //       key: _bottomNavigationKey,
//   //       index: 1,
//   //       items: [
//   //         CurvedNavigationBarItem(
//   //           child: ImageIcon(
//   //             AssetImage("lib/assets/images/scan-plant.png"),
//   //             size: 30,
//   //           ),
//   //           //child: ImageIcon(AssetImage("lib/assets/images/camera-plant.png"),),
//   //           label: 'Scanner',
//   //         ),
//   //         CurvedNavigationBarItem(
//   //           child: Icon(
//   //             Icons.home_outlined,
//   //             size: 28,
//   //           ),
//   //           label: 'Dashboard',
//   //         ),
//   //         CurvedNavigationBarItem(
//   //           child: Icon(Icons.shopping_bag_outlined),
//   //           label: 'Shop',
//   //         ),
//   //       ],
//   //       color: Color.fromRGBO(216, 221, 239, 1),
//   //       buttonBackgroundColor: Color.fromRGBO(216, 221, 239, 1),
//   //       backgroundColor: Colors.white,
//   //       animationCurve: Curves.easeInOut,
//   //       animationDuration: Duration(milliseconds: 600),
//   //       onTap: (index) {
//   //         setState(() {
//   //           _page = index;
//   //           if (_page == 1) {
//   //             // Navigate to SecondPage when "Chat" icon is clicked
//   //             Navigator.push(context, MaterialPageRoute(builder: (context) => Shop()));
//   //           }
//   //           if (_page == 3) {
//   //             // Navigate to SecondPage when "Chat" icon is clicked
//   //             Navigator.push(context, MaterialPageRoute(builder: (context) => Shop()));
//   //           }
//   //         });
//   //       },
//   //       letIndexChange: (index) => true,
//   //     ),
//   //   );
//   // }

//   Future loadImageModel() async {
//     Tflite.close();
//     String result;
//     result = (await Tflite.loadModel(
//       model: "lib/assets/model.tflite",
//       labels: "lib/assets/labels.txt",
//     ))!;
//     print(result);
//   }

//   Future classifyImage(image) async {
//     _classifiedResult = null;
//     // Run tensorflowlite image classification model on the image
//     print("classification start $image");
//     final List? result = await Tflite.runModelOnImage(
//       path: image.path,
//       numResults: 3,
//       threshold: 0.8,
//       imageMean: 127.5,
//       imageStd: 127.5,
//     );

//     setState(() {
//       if (image != null) {
//         _imageFile = File(image.path);
//         _classifiedResult = result;
//         //print("Classified result: $_classifiedResult");

//         // Check if specific disease is detected and navigate to corresponding page
//         if (_classifiedResult != null) {

//           // Macam flag
//           bool diseaseDetected = false;
//           //print("classified result ada value gak");

//           for (var result in _classifiedResult!) {
//             String detectedDisease = result["label"];
//             if (detectedDisease != "No Disease") {
//               diseaseDetected = true;
//               // Navigate to the corresponding page for the detected disease
//               if (detectedDisease == "Corn Northern Leaf Blight") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => CornLeafBlight(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Corn Common Rust") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => CornCommonRust(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Rice Leaf Blast") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => RiceLeafBlast(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Rice Brown Spot") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => RiceBrownSpot(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Chili Leaf Curl") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => ChiliLeafCurl(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Chili Leaf Spot") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => ChiliLeafSpot(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Chili Whitefly") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => ChiliWhitefly(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Tomato Septoria Leaf Spot") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => TomatoSeptoriaLeafSpot(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Tomato Yellow Leaf Curl Virus") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => TomatoYellowLeafCurlVirus(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Tomato Early Blight") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => TomatoEarlyBlight(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Green Leafhopper") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => GreenLeafhopper(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               } else if (detectedDisease == "Brown Planthopper") {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => BrownPlanthopper(
//                         detectedImage: Image.file(_imageFile!),
//                         classifiedResult: _classifiedResult,
//                       )),
//                 );
//               }
//               // Add more conditions for other diseases
//               break;
//             }
//           }

//           if (!diseaseDetected) {
//             _showNoDiseaseDetectedDialog(); // Show the error message dialog
//           }

//           // Add more conditions for other diseases

//         }
//       } else {
//         print('No image selected.');
//       }
//     });

//     print("classification done");
//   }

//   Future<void> _showNoDiseaseDetectedDialog() async {
//     await showDialog(
//       barrierDismissible: true,
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.all(
//               Radius.circular(20.0),
//             ),
//           ),
//           elevation: 30,
//           title: Text('Error'),
//           content: Text('Sorry, no pest or disease detected.        Try taking or selecting a new picture.'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//               child: Text('OK'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Future<void> _showImageSourceDialog() async {
//     await showModalBottomSheet(
//       context: context,
//       builder: (BuildContext context) {
//         return Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             ListTile(
//               leading: Icon(Icons.camera),
//               title: Text('Take a Photo'),
//               onTap: () {
//                 Navigator.pop(context);
//                 _captureImage();
//               },
//             ),
//             ListTile(
//               leading: Icon(Icons.image),
//               title: Text('Choose from Gallery'),
//               onTap: () {
//                 Navigator.pop(context);
//                 _chooseImage();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Future<void> _captureImage() async {
//     final picker = ImagePicker();
//     var image =
//     await picker.pickImage(source: ImageSource.camera, maxHeight: 300);
//     if (image != null) {
//       classifyImage(image);
//     }
//   }

//   Future<void> _chooseImage() async {
//     final picker = ImagePicker();
//     var image =
//     await picker.pickImage(source: ImageSource.gallery, maxHeight: 300);
//     if (image != null) {
//       classifyImage(image);
//     }
//   }
// }