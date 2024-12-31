// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:my_project/view/widget/auth/productdetailspage.dart';

// import '../../../widget/auth/store.dart';

// class Pants extends StatelessWidget {
//   const Pants({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(children: [
//         GridView(
//           physics: const NeverScrollableScrollPhysics(),
//           shrinkWrap: true,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 0.8,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           children: [
//             MaterialButton(
//               onPressed: () {
//                 Get.to(() => const ProductDetailsPage(
//                       productDetails:
//                           "Cargo pants are a type of casual trousers designed for comfort and utility, typically featuring multiple large pockets. These pants are popular for both practical use in activities like hiking, work, and military operations, as well as for fashion.  - \$55",
//                       productImage: 'assets/clothes/1.jpg',
//                     ));
//               },
//               child: Store(
//                 images: "assets/clothes/1.jpg",
//                 names: "Cargo Pants",
//                 price: r'$55',
//                 onFavoritePressed: () {},
//               ),
//             ),
//             MaterialButton(
//               onPressed: () {
//                 Get.to(() => const ProductDetailsPage(
//                       productDetails:
//                           "Straight-leg pants are a classic and versatile style of trousers that feature a consistent width from the thigh down to the ankle. This means that the pants have a straight cut, neither too tight nor too loose, offering a clean and tailored look. - \$32",
//                       productImage: 'assets/clothes/2.jpg',
//                     ));
//               },
//               child: Store(
//                 images: "assets/clothes/2.jpg",
//                 names: "Straight Leg",
//                 price: r'$32',
//                 onFavoritePressed: () {},
//               ),
//             ),
//             MaterialButton(
//                 onPressed: () {
//                   Get.to(() => const ProductDetailsPage(
//                         productDetails:
//                             "Field pants are rugged, durable trousers designed primarily for outdoor activities like hiking, camping, or other fieldwork. They are similar in style to cargo pants but are specifically made for high-performance in challenging environments. - \$67",
//                         productImage: 'assets/clothes/3.jpg',
//                       ));
//                 },
//                 child: Store(
//                   images: "assets/clothes/3.jpg",
//                   names: "Field Pants",
//                   price: r'$67',
//                   onFavoritePressed: () {},
//                 )),
//             MaterialButton(
//                 onPressed: () {
//                   Get.to(() => const ProductDetailsPage(
//                         productDetails:
//                             "A como suit is a type of formal or semi-formal suit that typically reflects a classic, sophisticated design, often associated with stylish, elegant occasions. While the term might not be universally known across all cultures, it can refer to specific suit styles or arrangements that are common in certain regions, especially in Italian fashion. - \$40",
//                         productImage: 'assets/clothes/4.jpg',
//                       ));
//                 },
//                 child: Store(
//                   images: "assets/clothes/4.jpg",
//                   names: " Como Suit",
//                   price: r'$40',
//                   onFavoritePressed: () {},
//                 )),
//           ],
//         ),
//       ]),
//     );
//   }
// }
