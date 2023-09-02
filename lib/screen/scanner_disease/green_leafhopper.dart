import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

class GreenLeafhopper extends StatefulWidget {
  final Image detectedImage;
  final List<dynamic>? classifiedResult; // Add this line

  GreenLeafhopper(
      {required this.detectedImage,
        this.classifiedResult}); // Add the parameter

  @override
  State<GreenLeafhopper> createState() => _GreenLeafhopperState();
}

class _GreenLeafhopperState extends State<GreenLeafhopper> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(196, 247, 161, 1),
        title: Text(
          'Green Leafhopper',
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
                          "1. Yellowing of leaves from tip to downwards.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("2. Plant stunted with reduced vigor.", style: TextStyle(wordSpacing: 2.5),),
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
                          "3. Withering or complete drying of plant by sucking ", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 37.5,
                        ),
                        Text("the plant sap. ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("4. White or pale yellow eggs inside leaf sheaths", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 37.5,
                        ),
                        Text("or midribs.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("Viral disease tungro spread by Green Leafhopper.", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 39,
                    //     ),
                    //     Text("(Nilaparvata lugens).", style: TextStyle(wordSpacing: 3.5),),
                    //   ],
                    // ),
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
                            "Use egg paeasitoids: Oligosita yasumatsui, Anagrus ", style: TextStyle(wordSpacing: 2.5),),
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
                            "spp, Gonatocerus spp. Cyrtorhinus lividipennis,  ", style: TextStyle(wordSpacing: 2.5),),
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
                          "Strepsipterans, small wasps, pipunculid flies, ", style: TextStyle(wordSpacing: 2.5),),
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
                          "nematodes, aquatic veliid bugs, nabid bugs, empid ", style: TextStyle(wordSpacing: 2.5),),
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
                          "flies, damselflies, and dragonflies. ", style: TextStyle(wordSpacing: 2.5),),
                      ],
                    ),

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
                        Text("Spray insecticides: Fenitrothion, Phosphamidon, ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("Fenthion, Quinalphos, Phosalone, or Monocrotophos.", style: TextStyle(wordSpacing: 2.5),),
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
                    //     Text("Carbofuran, Dichlorvos.", style: TextStyle(wordSpacing: 3.5),),
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
                        Text("1. Crop rotation with a non-rice crop during the", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("dry season.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("2. Upland rice intercropped with soybean.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("3. Nitrogen should be applied as needed.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("4. Transplanting older seedlings (>3 weeks) ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("reduces viral disease.", style: TextStyle(wordSpacing: 2.5),),
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
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
