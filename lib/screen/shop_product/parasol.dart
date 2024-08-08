import 'package:flutter/material.dart';
import 'package:mykebun/rubbish/shop.dart';
import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(ProductDetails());
// }

class Parasol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ParasolDetailsPage(),
    );
  }
}

class ParasolDetailsPage extends StatefulWidget {
  @override
  State<ParasolDetailsPage> createState() => _ParasolDetailsPageState();
}

class _ParasolDetailsPageState extends State<ParasolDetailsPage> {
  void _launchURL() async {
    // const url = 'https://shorturl.at/bov17'; // Replace with your desired URL
    const url =
        'https://shopee.com.my/PARASOL-RACUN-KULAT-(COPPER-HYROXIDE)-1KG-i.52507726.28903779643?sp_atk=8132c0dd-18bd-4750-b578-51d7de3f0375&xptdk=8132c0dd-18bd-4750-b578-51d7de3f0375'; // Replace with your desired URL
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
                SizedBox(
                  height: 30,
                ),
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
                        "lib/assets/images/parasol.jpg",
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
                        'PARASOL RACUN KULAT (COPPER HYROXIDE) 1KG',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'RM61.90',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepOrangeAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "Type:  ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(120, 20.0),
                              backgroundColor: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // To make it rounded
                              ),
                            ),
                            child: Text("Fungicides"),
                          ),
                        ],
                      ),
                      Text(
                        'Product in form of powder that contains copper hydroxide that mainly use as fungicides.  ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          //color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 15),
                      Divider(
                        thickness: 5,
                      ),
                      Text(
                        'Product Description:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Direction to use: ',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '1. Spray for every 5 days when needed.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '2. Do not use this product more than 3 times in one season.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '3. Refer on the product label for ratio mixture.',
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
          //margin: EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: _launchURL,
            style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 55.0),
              backgroundColor: Color.fromRGBO(77, 139, 49, 1),
              padding: EdgeInsets.symmetric(vertical: 16),
              textStyle: TextStyle(fontSize: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Row(
              children: [
                Spacer(),
                Icon(Icons.shopping_cart, color: Colors.white),
                SizedBox(width: 10),
                Text('Buy Now', style: TextStyle(color: Colors.white)),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
