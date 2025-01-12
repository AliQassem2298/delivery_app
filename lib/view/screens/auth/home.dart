// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/main.dart';
import 'package:my_project/models/market_model.dart';
import 'package:my_project/models/show_all_markets_model.dart';
import 'package:my_project/services/cancel_order_service.dart';
import 'package:my_project/services/show_all_markets_service.dart';
import 'package:my_project/view/screens/search_page.dart';
import 'package:my_project/view/widget/auth/store.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  RxBool isLoading = false.obs;

  void loadingIndicatorFalse() {
    isLoading.value = false;
    setState(() {});
  }

  void loadingIndicatorTrue() {
    isLoading.value = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                print('${sharedPreferences!.getString("token")}');
                print('${sharedPreferences!.getString("location")}');
                // loadingIndicatorTrue();

                // try {

                //   print('Success');
                //   loadingIndicatorFalse();
                //   Get.snackbar(
                //     'Hi',
                //     'Success',
                //   );
                // } catch (e) {
                //   print(e.toString());
                //   Get.snackbar(
                //     'Sorry',
                //     e.toString(),
                //     colorText: Colors.white,
                //     backgroundColor: Colors.red,
                //   );
                // }
                // loadingIndicatorFalse();

                // print(
                //     '///////////////////////////////////////////////////////////');

                await CancelOrderService().cancelOrder(orderId: 4);
              },
              icon: const Icon(Icons.import_contacts)),
          IconButton(
              onPressed: () {
                sharedPreferences!.clear();
              },
              icon: const Icon(Icons.abc))
        ],
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text('Markets'),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              // MaterialButton(
              // onPressed: () {},
              //  child: Icon(Icons.settings,
              //  color: Color(0xff3681AB), size: 20),
              //  ),
              const SizedBox(width: 18),

              Expanded(
                child: TextFormField(
                  readOnly: true,
                  onTap: () {
                    Get.to(() => const SearchPage());
                    // showSearch(
                    //   context: context,
                    //   delegate: StoreSearchDelegate(),
                    // );
                  },
                  decoration: InputDecoration(
                    hintText: "Find a store or a product!",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    suffixIcon:
                        const Icon(Icons.search, color: Color(0xff3681AB)),
                  ),
                ),
              ),

              MaterialButton(
                onPressed: () {},
                child: const Icon(Icons.favorite,
                    color: Color(0xff3681AB), size: 20),
              ),

              // SizedBox(width: 0),
              MaterialButton(
                onPressed: () {},
                child: const Icon(Icons.notifications_active_outlined,
                    color: Color(0xff3681AB), size: 20),
              ),
            ],
          ),
          const SizedBox(height: 20),
          FutureBuilder<ShowAllMarketsModel>(
            future: ShowAllMarketsService().showAllMarkets(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: const CircularProgressIndicator()
                      .paddingSymmetric(vertical: 250),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                );
              } else if (snapshot.hasData) {
                if (snapshot.data!.data.isEmpty) {
                  return const Center(
                    child: Text(
                      'No markets found',
                      style: TextStyle(fontSize: 12),
                    ),
                  );
                } else {
                  List<MarketModel> markets = snapshot.data!.data;
                  return GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.only(bottom: 5),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: markets.length,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      return Store(
                        market: markets[index],
                      ).paddingOnly(left: 8, right: 8);
                    },
                  );
                }
              } else {
                return Center(
                  child: const CircularProgressIndicator()
                      .paddingSymmetric(vertical: 250),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
