import 'package:flutter/material.dart';
import 'package:mykebun/rubbish/shop.dart';
import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(ProductDetails());
// }

class Tricho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrichoDetailsPage(),
    );
  }
}

class TrichoDetailsPage extends StatefulWidget {
  @override
  State<TrichoDetailsPage> createState() => _TrichoDetailsPageState();
}

class _TrichoDetailsPageState extends State<TrichoDetailsPage> {
  void _launchURL() async {
    const url = 'https://shorturl.at/corA0'; // Replace with your desired URL
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(196, 247, 161, 1),
      //   title: Text(
      //     "Product Details",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 30,),
                Stack(
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        //color: Color(0xFFF5F5F5),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                      ),
                    ),


                    Center(
                      child: Image.asset(
                        "lib/assets/images/tricho.jpg",
                        height: 250,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Real Strong Tricho Acti-Plus 6 - Trichoderma fungicide organic 1KG RealStrong',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),

                      Text(
                        'RM56.00',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10,),

                      Divider(thickness: 5,),
                      SizedBox(height: 5,),

                      Row(
                        children: [
                          Text("Type:  ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                          ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(105, 20.0), // Adjust the width and height as needed
                              primary: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // To make it rounded
                              ),
                            ),
                            child: Text("Fungicides"),
                          ),
                        ],
                      ),
                      Text(
                        'Based microbial inoculant containing Trichoderma koningii as the '
                            'active ingredient for controlling fungal diseases in plants. '
                            'Tricho Acti-Plus is a proven, viable, sustainable and eco-friendly '
                            'alternative to environmentally damaging chemical-based fungicides.  ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          //color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 15),
                      Divider(thickness: 5,),
                      Text(
                        'Product Description:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Direction to use: ',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '1. Nursery: 10mg to 1Liter chlorine-free water, leave it '
                            'for 5 hours to active the Trichoderma koningii, then '
                            'spray the whole tree. Respray every 2-3weeks. ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '2. Field-transplanting: 15gm or 1% to apply in poly bag or '
                            'mix with compost or organic fertilizers before planting '
                            'or transplanting.  ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '3. Immature/mature crops: Spray base of plant (45-50cm radius) with Tricho Acti-plus solution.Spraying is to be repeated every wet season. ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 35,
            left: 15,
            child: GestureDetector(
              onTap: () {
                // Navigate back to the previous screen here
                Navigator.pop(context);
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.arrow_back, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          margin: EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: _launchURL,
            style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 55.0), // Adjust the width and height as needed
              primary: Color.fromRGBO(77, 139, 49, 1),
              padding: EdgeInsets.symmetric(vertical: 16),
              textStyle: TextStyle(fontSize: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Row(
              children: [
                Spacer(flex: 1,),
                ImageIcon(AssetImage("lib/assets/images/shopping-cart.png")),
                SizedBox(width: 10,),
                Text('Buy Now'),
                Spacer(flex: 1,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
