import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

class TomatoSeptoriaLeafSpot extends StatefulWidget {
  final Image detectedImage;
  final List<dynamic>? classifiedResult; // Add this line

  TomatoSeptoriaLeafSpot(
      {required this.detectedImage,
        this.classifiedResult}); // Add the parameter

  @override
  State<TomatoSeptoriaLeafSpot> createState() => _TomatoSeptoriaLeafSpotState();
}

class _TomatoSeptoriaLeafSpotState extends State<TomatoSeptoriaLeafSpot> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(196, 247, 161, 1),
        title: Text(
          'Tomato Septoria Leaf Spot',
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
                            fontSize: 17.0,
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
                          "1. Symptoms usually appear on leaves, but can ", style: TextStyle(wordSpacing: 2.5),),
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
                          "occur on petioles, stems, and the calyx.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("2. Small, water-soaked, circular spots 0.16 - 0.32 ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("cm diameters underside of leaves.", style: TextStyle(wordSpacing: 2.5),),
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
                          "3. Presence of many dark-brown, pimple-like", style: TextStyle(wordSpacing: 2.5),),
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
                          "structures called pycnidia (fruiting bodies of the", style: TextStyle(wordSpacing: 2.5),),
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
                          "fungus) that are readily visible in the tan centers ", style: TextStyle(wordSpacing: 2.0),),
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
                          "of the spots. ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("1. Fungus Septoria lycopersici.", style: TextStyle(wordSpacing: 2.5),),
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
                          "2. Severe in areas where wet, humid weather ", style: TextStyle(wordSpacing: 2.5),),
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
                          "persists for extended periods.", style: TextStyle(wordSpacing: 2.5),),
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
                          "Mulch around the base of the plants.", style: TextStyle(wordSpacing: 1.5),),
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
                        Text("Use fungcides:  chlorothalonil, maneb, macozeb,", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("bordeaux mixture, copper hydroxide, copper sulfate,", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("or copper oxychloride sulfate. ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("1. Removing or destroying as much of the tomato", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("debris as possible after harvest. ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("2. Plant debris can be covered and buried by deep", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("plowing.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("3. Practice crop rotation with a non-Solanaceous", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("crop.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("4. Avoid working with plants when they are wet.", style: TextStyle(wordSpacing: 2.5),),
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
