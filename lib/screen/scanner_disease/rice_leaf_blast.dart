import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

class RiceLeafBlast extends StatefulWidget {
  final Image detectedImage;
  final List<dynamic>? classifiedResult; // Add this line

  RiceLeafBlast(
      {required this.detectedImage,
        this.classifiedResult}); // Add the parameter

  @override
  State<RiceLeafBlast> createState() => _RiceLeafBlastState();
}

class _RiceLeafBlastState extends State<RiceLeafBlast> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(196, 247, 161, 1),
        title: Text(
          'Rice Leaf Blast',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),

            Center(
              child: Container(
                width: 300, // Adjust this width as needed
                height: 200, // Adjust this height as needed
                //constraints: BoxConstraints(maxWidth: double.infinity, maxHeight: double.infinity),
                margin: EdgeInsets.fromLTRB(16, 16, 16, 10),
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.black, width: 2), // Add border here
                  //borderRadius: BorderRadius.circular(8),
                ),
                child: ClipRRect(
                  //borderRadius: BorderRadius.circular(6),
                  child: Image(
                    image: widget.detectedImage.image,
                    fit: BoxFit.cover, // Adjust the fit mode as needed
                  ),
                ),
              ),
            ),

            // Display the classified result cards
            if (widget.classifiedResult != null)
              Column(
                children: widget.classifiedResult!.map((result) {
                  return Card(
                    elevation: 0.0,
                    color: Colors.lightBlue,
                    child: Container(
                      width: 280,
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          "${result["label"]} : ${(result["confidence"] * 100).toStringAsFixed(2)}%",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),

            SizedBox(
              height: 25,
            ),

            Material(
              elevation: 2,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                //height: 300,
                width: 375,
                //margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(211, 211, 211, 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    // Symptoms
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Symptoms",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "1. The leaf spots are elongated and pointed at", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 38.5,
                        ),
                        Text(
                          "both ends, with reddish-brown margins and a", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 38.5,
                        ),
                        Text(
                          "whitish-gray center.", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("2. Infected rice seeds will appear clustered", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 38.5,
                        ),
                        Text("with dark grayish patches.", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "3. Infection can also occur on the rice stem nodes", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 38.5,
                        ),
                        Text(
                          "and base, leading to the disease called stem rot.", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),

                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Material(
              elevation: 2,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                //height: 300,
                width: 375,
                //margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(211, 211, 211, 0.5),
                  //color: Color.fromRGBO(255,114,118, 0.6),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    // Symptoms
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "What Caused It?",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("1. Fungus Pyricularia grisea", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "2. Fungus Magnaporthe oryzae", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Material(
              elevation: 2,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                //height: 300,
                width: 375,
                //margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(216, 221, 239, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    // Recommendations
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Recommendations",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        ImageIcon(
                          AssetImage("lib/assets/images/leaf.png"),
                          size: 23,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Organic Control",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                            "No information."),
                      ],
                    ),

                    // SizedBox(
                    //   height: 5,
                    // ),
                    //
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Text(
                    //       "lividipennis adult. hymenopteran wasps, hydrophilid", style: TextStyle(wordSpacing: 3.5),),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    //
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Text(
                    //       "and dytiscid beetles, dragonflies, damselflies nepid,", style: TextStyle(wordSpacing: 3.2),),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    //
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Text(
                    //       "microveliid, and mesoveliid. Other than that, using", style: TextStyle(wordSpacing: 4.2),),
                    //   ],
                    // ),
                    //
                    // SizedBox(
                    //   height: 5,
                    // ),
                    //
                    // Row(
                    //     children: [
                    //       SizedBox(
                    //         width: 20,
                    //       ),
                    //       Text(
                    //         "botanic method: Neem oil. Iluppai oil, Neem seed", style: TextStyle(wordSpacing: 4),),
                    //     ]
                    // ),
                    //
                    // SizedBox(
                    //   height: 5,
                    // ),
                    //
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Text(
                    //       "kernel extract.", style: TextStyle(wordSpacing: 4),),
                    //   ],
                    // ),

                    SizedBox(
                      height: 15,
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        ImageIcon(
                          AssetImage("lib/assets/images/chemicals.png"),
                          size: 23,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Chemical Control",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("1. Soil treatement: Silicon fertilizers like calcium", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 38.5,
                        ),
                        Text("silicate.", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("2. Systemic fungicides like triazoles and strobilurins.", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 38.5,
                    //     ),
                    //     Text(".", style: TextStyle(wordSpacing: 2.5),),
                    //   ],
                    // ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Material(
              elevation: 2,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                //height: 300,
                width: 375,
                //margin: EdgeInsets.only(top: 16),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(211, 211, 211, 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    // Preventive Measures
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Preventive Measures",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("1. Adjust planting time -> seeds early, when", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 38.5,
                        ),
                        Text("possible, after the onset of the rainy season. ", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("2. Split nitrogen fertilizer application in two", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 38.5,
                        ),
                        Text("or more treatments.", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text("3. Flood the field as often as possible.", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    //
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
