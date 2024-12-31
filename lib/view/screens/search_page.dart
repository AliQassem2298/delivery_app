import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_project/helper/api.dart';
import 'package:my_project/models/market_model.dart';
import 'package:my_project/models/product_model.dart';
import 'package:my_project/models/search_market_or_product_model.dart';
import 'package:my_project/services/search_market_or_product_service.dart';
import 'package:my_project/view/screens/auth/products/product_page.dart';
import 'package:my_project/view/widget/auth/productdetailspage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String searchQuery = ""; // النص المدخل من المستخدم
  late Future<SearchMarketOrProductModel> searchResults; // نتائج البحث

  @override
  void initState() {
    super.initState();
    // جلب جميع المتاجر والمنتجات عند الدخول لأول مرة
    searchResults =
        SearchMarketOrProductService().searchMarketOrProduct(name: "");
  }

  // استدعاء البحث
  void performSearch(String query) {
    setState(() {
      searchQuery = query;
      searchResults =
          SearchMarketOrProductService().searchMarketOrProduct(name: query);
    });
  }

  // التنقل إلى صفحة تفاصيل المنتج
  void navigateToProductDetails(ProductModel product, MarketModel market) {
    Get.to(() => ProductDetailsPage(
          product: product,
          market: market,
        ));
  }

  // التنقل إلى صفحة المتجر
  void navigateToStoreDetails(MarketModel market) {
    Get.to(() => ProductsPage(market: market));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
            hintText: "Search for a store or product...",
            border: InputBorder.none,
          ),
          textInputAction: TextInputAction.search,
          onChanged: performSearch,
        ),
      ),
      body: FutureBuilder<SearchMarketOrProductModel>(
        future: searchResults,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
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
            if (snapshot.data!.status == 404) {
              return Center(
                child: Text(
                  snapshot.data!.message,
                  style: const TextStyle(fontSize: 16),
                ),
              );
            } else {
              final markets = snapshot.data!.data.markets;
              final products = snapshot.data!.data.products;

              return ListView(
                padding: const EdgeInsets.all(8.0),
                children: [
                  if (markets.isNotEmpty) ...[
                    const Text(
                      "Stores",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: markets.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              '$baseUrlImage/${markets[index].image.path}',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.store),
                            ),
                          ),
                          title: Text(markets[index].name),
                          subtitle: Text("Store ID: ${markets[index].id}"),
                          onTap: () => navigateToStoreDetails(markets[index]),
                        );
                      },
                    ),
                  ],
                  if (products.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    const Text(
                      "Products",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              '$baseUrlImage/${products[index].image.path}',
                              width: 50,
                              height: 50,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.image),
                            ),
                          ),
                          title: Text(products[index].name),
                          subtitle: Text("Price: ${products[index].price}"),
                          onTap: () => navigateToProductDetails(
                              products[index], markets[index]),
                        );
                      },
                    ),
                  ],
                  if (markets.isEmpty && products.isEmpty)
                    const Center(
                      child: Text(
                        "No results found.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                ],
              );
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
