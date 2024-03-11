import 'package:e_commerce_2/mostafa/Product.dart';
import 'package:e_commerce_2/mostafa/fetchAllProductService.dart';
import 'package:e_commerce_2/mostafa/product_grid.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductGrid(),
    );
  }
}
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Product> products = [];
  @override
  void initState() {
    super.initState();
    
      fetchAllProducts();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return _MyProduct(products[index]);
          },
        ),
      ),
    );
  }
  Widget _MyProduct(Product product) {
    return Card(

      child: Column(
        children: [
          Text(product.name),
          // Text(product.description),
          // Text(product.brandName!),
          // Text(product.rating.toString()),
          // Text(product.variations[0].price.toString()),
          // Image.network(product.brandLogoUrl!),
        ],
      ),
    );



    
  }
}

