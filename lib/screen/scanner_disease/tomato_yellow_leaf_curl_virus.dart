import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

class TomatoYellowLeafCurlVirus extends StatefulWidget {
  final Image detectedImage;
  final List<dynamic>? classifiedResult; // Add this line

  TomatoYellowLeafCurlVirus(
      {required this.detectedImage,
        this.classifiedResult}); // Add the parameter

  @override
  State<TomatoYellowLeafCurlVirus> createState() => _TomatoYellowLeafCurlVirusState();
}

class _TomatoYellowLeafCurlVirusState extends State<TomatoYellowLeafCurlVirus> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(196, 247, 161, 1),
        title: Text(
          'Tomato Yellow Leaf Curl Virus',
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
                            fontSize: 15.4,
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
                          "1. Small leaves that become yellow between the", style: TextStyle(wordSpacing: 2.5),),
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
                          "veins.", style: TextStyle(wordSpacing: 2.5),),
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
                          "2. The leaves also curl upwards and towards the  ", style: TextStyle(wordSpacing: 2.5),),
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
                          "middle of the leaf.", style: TextStyle(wordSpacing: 2.5),),
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
                          "3. The shoots become shortened and give the  ", style: TextStyle(wordSpacing: 2.5),),
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
                          "young plants a bushy appearance.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("1. Viruses in the Geminivirus family that spread", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("by whiteflies.", style: TextStyle(wordSpacing: 2.5),),
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
                          "2. Whiteflies of Bemisia tabaci species.", style: TextStyle(wordSpacing: 2.5),),
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
                          "No information.", style: TextStyle(wordSpacing: 1.0),),
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
                        Text("Insticides of family of pyrethroids used as soil ", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("drenches or spray during the seedling stage.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("1. Use resistant or tolerant varieties.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("2. Use net to cover seedbeds and plants.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("3. Practice crop rotation wint nin susceptible", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("plants.", style: TextStyle(wordSpacing: 2.5),),
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
                        Text("4. Use sticky yelow plastic traps.", style: TextStyle(wordSpacing: 2.5),),
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
