import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

class RiceBrownSpot extends StatefulWidget {
  final Image detectedImage;
  final List<dynamic>? classifiedResult; // Add this line

  RiceBrownSpot(
      {required this.detectedImage,
        this.classifiedResult}); // Add the parameter

  @override
  State<RiceBrownSpot> createState() => _RiceBrownSpotState();
}

class _RiceBrownSpotState extends State<RiceBrownSpot> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(196, 247, 161, 1),
        title: Text(
          'Rice Brown Spot',
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
                          "1. Round elliptical spots on the surface of the ", style: TextStyle(wordSpacing: 2.5),),
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
                          "leaves, with a size like sesame seeds, measuring  ", style: TextStyle(wordSpacing: 2.5),),
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
                          "8-15 mm in length.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("2. The color is silver-brown. The center of the spot", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("turns whitish-gray when the spot is fully formed.", style: TextStyle(wordSpacing: 2.5),),
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
                          "3. Spots are also found on the glumes - dark brown", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: 38,
                        ),
                        Text(
                          "or blackish spots are visible on the glumes. ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("4. Brownish spots are present on the coleoptile, ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("stem, leaf sheath, panicle stalk, and mature root ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("of the plant. ", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 37.5,
                    //     ),
                    //     Text("plant above the water level.", style: TextStyle(wordSpacing: 1.5),),
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
                        Text("1. Fungus Cochliobolus miyabeanus.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("2. Fields that mismangement of soil fertility", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Text(
                    //       "2. Closed canopy of rice plants, densely seeded ", style: TextStyle(wordSpacing: 3.5),),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 39,
                    //     ),
                    //     Text("crops, exciessive use of nitrogen, and early ", style: TextStyle(wordSpacing: 3.5),),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 39,
                    //     ),
                    //     Text("season inscticide spraying.", style: TextStyle(wordSpacing: 3.5),),
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
                            "Treat seeds in hot water (53-54C) for 10-12 minutes", style: TextStyle(wordSpacing: 2.5),),
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
                          "before plant.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("For seed treatment:  fungicides such as iprodione, ", style: TextStyle(wordSpacing: 3.5),),
                        // Text(
                        //   " tebuconazole",
                        //   style: TextStyle(
                        //       fontStyle: FontStyle.italic,
                        //       color: Colors.green,
                        //       fontWeight: FontWeight.w500),
                        // ),
                        // Text(" if "),
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
                        Text("propiconazole, azoxystrobin, trifloxystrobin,", style: TextStyle(wordSpacing: 3.5),),
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
                        Text("and carbendazim.", style: TextStyle(wordSpacing: 3.5),),
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
                        Text("1. Monitor soil nutrients regularly.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("2. Apply required fertilizers.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("3. Uses resistant varieties.", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 20,
                    //     ),
                    //     Text("4. Look for inscets daily in the seedbed or in", style: TextStyle(wordSpacing: 3.5),),
                    //   ],
                    // ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 39,
                    //     ),
                    //     Text("the field, on stems and the water surface.", style: TextStyle(wordSpacing: 3.5),),
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
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
