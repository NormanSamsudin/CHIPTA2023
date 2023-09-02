// import 'package:flutter/material.dart';
// import 'package:mykebun_detect_disease/screen/shop_product/bacto.dart';
// import 'package:mykebun_detect_disease/screen/shop_product/neem.dart';
// import 'package:mykebun_detect_disease/screen/shop_product/parasol.dart';
// import 'package:mykebun_detect_disease/screen/shop_product/silicon.dart';
// import 'package:mykebun_detect_disease/screen/shop_product/syngenta.dart';

// import '../screen/shop_product/tricho.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

// import 'scanner.dart';

// class Product {
//   final String name;
//   final String imageUrl;
//   final String description;
//   final double price;

//   Product({
//     required this.name,
//     required this.imageUrl,
//     required this.description,
//     required this.price,
//   });
// }


// class ShopNew extends StatefulWidget {
//   @override
//   State<ShopNew> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<ShopNew> {


//   TextEditingController _searchController = TextEditingController();
//   List<Product> allProducts = [
//     Product(
//       name: 'Tricho Acti-Plus 6',
//       imageUrl: 'lib/assets/images/tricho.jpg',
//       description: '(1Kg)',
//       price: 56.00,
//     ),
//     Product(
//       name: 'Syngenta Amistartop',
//       imageUrl: 'lib/assets/images/syngenta.jpg',
//       description: 'Azoxystrobin 18.0% + D.. ',
//       price: 138.90,
//     ),
//     Product(
//       name: 'Bacto Acti Plus Bacillus',
//       imageUrl: 'lib/assets/images/bacto.jpg',
//       description: 'subtilis (1Kg)',
//       price: 89.00,
//     ),
//     Product(
//       name: 'KMB Silicon Booster',
//       imageUrl: 'lib/assets/images/silicon.jpg',
//       description: '(1L)',
//       price: 36.00,
//     ),

//     Product(
//       name: 'Pherotools NEEM OIL +',
//       imageUrl: 'lib/assets/images/neem.jpg',
//       description: 'Enul (1L)',
//       price: 58.00,
//     ),
//     Product(
//       name: 'Parasol Copper',
//       imageUrl: 'lib/assets/images/parasol.jpg',
//       description: 'Hydroxide (1Kg)',
//       price: 65.00,
//     ),



//     // Add more products here
//   ];
//   List<Product> displayedProducts = [];

//   @override
//   void initState() {
//     super.initState();
//     displayedProducts = allProducts;
//   }

//   void filterProducts(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         displayedProducts = allProducts;
//       } else {
//         displayedProducts = allProducts
//             .where((product) =>
//                 product.name.toLowerCase().contains(query.toLowerCase()))
//             .toList();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: CustomScrollView(
//         slivers: <Widget>[
//           //2
//           SliverAppBar(
//             backgroundColor: Colors.white,
//             //floating: true,
//             //pinned: true,
//             //snap: true,
//             //floating: true,
//             expandedHeight: 160.0,
//             flexibleSpace: FlexibleSpaceBar(
//               //stretchModes: [StretchMode.blurBackground],
//               title: Text('Our Products', style: TextStyle(color: Colors.white),),
//               titlePadding: EdgeInsets.fromLTRB(20, 15, 10, 15),
//               background: Image.asset(
//                 'lib/assets/images/header.jpg',
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),

//           // Adding a SliverList to hold the Column
//           SliverList(
//             delegate: SliverChildListDelegate(
//               [
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     //SizedBox(width: 20,),
//                     Container(
//                       height: 50,
//                       width: 360,
//                       child: SearchBar(
//                         hintText: 'Search products...',
//                         hintStyle: MaterialStateProperty.all(const TextStyle(
//                             color: Colors.grey)), // Set the hint text color
//                         controller: _searchController,
//                         onChanged: filterProducts,
//                         trailing: [
//                           IconButton(
//                             icon: const Icon(Icons.search_outlined),
//                             onPressed: () {
//                               //print('Use voice command');
//                             },
//                           ),
//                         ],
//                         // other arguments
//                       ),
//                     ),
//                     //SizedBox(width: 20,),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 25,
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     for (int i = 0; i < displayedProducts.length; i += 2)
//                       Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               //SizedBox(width: 22),
//                               buildProductContainer(displayedProducts[i]),
//                               SizedBox(width: 25),
//                               if (i + 1 < displayedProducts.length)
//                                 buildProductContainer(displayedProducts[i + 1]),
//                               //SizedBox(width: 10),
//                             ],
//                           ),
//                           SizedBox(height: 25),
//                         ],
//                       ),
//                     SizedBox(height: 15),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildProductContainer(Product product) {
//     return InkWell(
//       onTap: () {
//         // Handle product tap here
//         // You can use Navigator to navigate to a product details page or any other action

//         if(product.name == "Tricho Acti-Plus 6"){
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => TrichoDetailsPage()),
//           );
//         } else if(product.name == "Syngenta Amistartop"){
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => SyngentaDetailsPage()),
//           );
//         } else if(product.name == "Bacto Acti Plus Bacillus"){
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => BactoDetailsPage()),
//           );
//         } else if(product.name == "KMB Silicon Booster"){
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => SiliconDetailsPage()),
//           );
//         }
//         else if(product.name == "Pherotools NEEM OIL +"){
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => NeemDetailsPage()),
//           );
//         } else if(product.name == "Parasol Copper"){
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => ParasolDetailsPage()),
//           );
//         }


//         // else if(product.name == "Testing"){
//         //   Navigator.push(
//         //     context,
//         //     MaterialPageRoute(builder: (context) => BuyButton()),
//         //   );
//         // }


//         print('Tapped on ${product.name}');
//       },
//       child: Container(
//         width: 170.0,
//         height: 200.0,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.all(
//             Radius.circular(10),
//           ),
//           border: Border.all(color: Colors.white),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               offset: Offset(2, 2),
//               spreadRadius: 2,
//               blurRadius: 1,
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Image.asset(
//               product.imageUrl,
//               width: 120,
//               height: 120,
//             ),
//             SizedBox(height: 15),
//             Row(
//               children: [
//                 SizedBox(width: 8),
//                 Text(product.name),
//               ],
//             ),
//             Row(
//               children: [
//                 SizedBox(width: 8),
//                 Text(product.description),
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 SizedBox(width: 8),
//                 Text(
//                   'RM${product.price.toStringAsFixed(2)}',
//                   style: TextStyle(
//                     color: Colors.deepOrangeAccent,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//      ),
//     );
//   }
// }