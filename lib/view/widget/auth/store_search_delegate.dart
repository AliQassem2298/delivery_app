// import 'package:flutter/material.dart';
// import 'package:my_project/view/widget/auth/customgetpage.dart';





// class StoreSearchDelegate extends SearchDelegate<String> {
//   final List<String> stores = [
//     "ClothesPage",
//     "ElectronicsPage",
//     "Hoodies",
//     "Jackets",
//     "MakeupPage",
//     "Pants",
//     "PerfumePage",
//     "PharmacyPage",
//     "ShoesPage",
//     "Tshirts"
//   ];

//   StoreSearchDelegate();

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: const Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, '');
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     final results = stores
//         .where((store) => store.toLowerCase().contains(query.toLowerCase()))
//         .toList();

//     if (results.isEmpty) {
//       return Center(
//         child: Text('No results found for "$query".'),
//       );
//     }

//     return ListView.builder(
//       itemCount: results.length,
//       itemBuilder: (context, index) {
//         final storeName = results[index];
//         return ListTile(
//           title: Text(storeName),
//           onTap: () {
            
//             Navigator.of(context).push(
//               MaterialPageRoute(
//                 builder: (context) => getpage(pageName: storeName),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestions = stores
//         .where((store) => store.toLowerCase().contains(query.toLowerCase()))
//         .toList();

//     return ListView.builder(
//       itemCount: suggestions.length,
//       itemBuilder: (context, index) {
//         final storeName = suggestions[index];
//         return ListTile(
//           title: Text(storeName),
//           onTap: () {
//             query = storeName;
//             showResults(context);
//           },
//         );
//       },
//     );
//   }
// }


