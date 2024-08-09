import 'package:flutter/material.dart';
import 'package:mykebun/rubbish/weatherStation.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:mykebun/screen/weatherStationNew.dart';
import 'package:mykebun/test/test1.dart';
import 'package:mykebun/test/test2.dart';
import 'package:mykebun/test/test3.dart';
import 'package:mykebun/screen/scannerNew.dart';
import 'package:mykebun/screen/shopNew.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Widget showPage = WeatherStationNew();

  List<Widget> pageList = [
    ScannerNew(),
    WeatherStationNew(),
    ShopNew(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromRGBO(196, 247, 161, 1),
            title: Row(
              children: [
                //SizedBox(width: 0,),
                ImageIcon(
                  AssetImage("lib/assets/images/icon-mykebun.png"),
                  size: 40,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "MyKebun",
                  style: TextStyle(color: Colors.black),
                )
              ],
            )),
        body: showPage,
        bottomNavigationBar: CurvedNavigationBar(
          index: 1,
          color: Color.fromRGBO(216, 221, 239, 1),
          buttonBackgroundColor: Color.fromRGBO(216, 221, 239, 1),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              showPage = pageList[index];
            });
          },
          items: const [
            CurvedNavigationBarItem(
              child: ImageIcon(
                AssetImage("lib/assets/images/scan-plant.png"),
                size: 30,
              ),
              //child: ImageIcon(AssetImage("lib/assets/images/camera-plant.png"),),
              label: 'Scanner',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.home_outlined,
                size: 28,
              ),
              label: 'Dashboard',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.shopping_bag_outlined),
              label: 'Shop',
            ),
          ],
        ),
      ),
    );
  }
}
