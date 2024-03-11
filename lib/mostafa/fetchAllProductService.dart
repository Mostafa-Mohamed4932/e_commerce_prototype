import 'package:e_commerce_2/mostafa/Product.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

Future<List<Product?>> fetchAllProducts() async {
  try {
    String apiUrl = "https://slash-backend.onrender.com/product";
    final dio = Dio();
    final response = await dio.get(apiUrl);
    if (response.statusCode == 200) {
      debugPrint("Request succeeded, fetched all products");
    }
  } catch (e) {
    debugPrint("Error fetching products: $e");
  }

  return []; 
}

 