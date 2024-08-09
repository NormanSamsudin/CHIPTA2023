import 'package:flutter/material.dart';
import 'package:mykebun/rubbish/shop.dart';
import 'package:url_launcher/url_launcher.dart';

// void main() {
//   runApp(ProductDetails());
// }

class Bacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BactoDetailsPage(),
    );
  }
}

class BactoDetailsPage extends StatefulWidget {
  @override
  State<BactoDetailsPage> createState() => _BactoDetailsPageState();
}

class _BactoDetailsPageState extends State<BactoDetailsPage> {
  void _launchURL() async {
    // const url = 'https://shorturl.at/lLTX1'; // Replace with your desired URL
    const url =
        'https://shopee.com.my/Real-Strong-Bacto-Acti-Plus-Bacillus-subtilis-%E6%9E%AF%E8%8D%89%E6%9D%86%E8%8F%8C-1KG-i.104534676.7057902454?sp_atk=b133e994-8319-4bb4-913b-9bc9800f34e2&xptdk=b133e994-8319-4bb4-913b-9bc9800f34e2'; // Replace with your desired URL
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
                        "lib/assets/images/bacto.jpg",
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
                        'Real Strong - Bacto Acti Plus Bacillus subtilis 枯草杆菌 1KG',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'RM89.00',
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
                        'Contains high concentration of probiotic bacteria for agriculture application. '
                        'The active ingredient, BACILLUS subtilis can improve soil fertility, plant '
                        'growth and also boost immune system to fight disease infection. It is a safe, '
                        'effective and green biotechnology product.  ',
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
                        '1. Liquid Application: Dilute 10g in 1L of chlorine-free water (1:100 dilution). '
                        'Drench at planting soil or spray on leaves. Repeat application every 2-4 weeks to '
                        'maintain good population of Bacillus subtilis in the farm.    ',
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
                        '2. Soil/Compost application: Mix 100g product powder in 10kg of soil/compost. Plough/broadcast '
                        'at planting area, supplement with liquid application or compost every 2-4 weeks. ',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
