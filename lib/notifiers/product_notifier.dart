import 'dart:convert';

import 'package:come_shop/models/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductRepository extends ChangeNotifier {
  List<Product> products = [];
  List<dynamic> selectedProducts = [];
  List<String> categories = [];
  bool isLoading = false;
  bool fetchData = false;
  List cartProduct = [];
  Future<bool> fetchProduct() async {
    try {
      // const apiKey = '24baa271311f413799e6f5e9715dbe3620240830161518117601';
      // const apiId = 'IXSP4DF6C4ZY9YF';
      // const organizationId = '7a008f8fcc34491d8b6db583a218dd30';
      final url = Uri.parse(
        'https://fakestoreapi.com/products',
      );
      final response = await http.get(url);
      // debugPrint('product response is ${response.body}');
      // debugPrint('request status code is ${response.statusCode}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        // final fetchedProducts = data['items'] as List;
        final productList = 
            List.from(json).map((e) => Product.fromJson(e)).toList();
         debugPrint('products from json is ${productList[0].description}');
       
        // products = productList;
        //  debugPrint('products is ${products[0]}');
         return true;
      }
      return true;
    } catch (e) {
      debugPrint('fetch product error is $e');
      return false;
    }
  }

  Future<bool> fetchCategories() async {
    try {
      // const apiKey = '24baa271311f413799e6f5e9715dbe3620240830161518117601';
      // const apiId = 'IXSP4DF6C4ZY9YF';
      // const organizationId = '7a008f8fcc34491d8b6db583a218dd30';
      final url = Uri.parse(
        'https://fakestoreapi.com/products/categories',
      );
      final response = await http.get(url);
      // debugPrint('product response is ${response.body}');
      // debugPrint('request status code is ${response.statusCode}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        // final fetchedProducts = data['items'] as List;
        final fetchedCategories = json;
        //     List.from(json).map((e) => Product.fromJson(e)).toList();
         debugPrint('categories is $fetchedCategories');
       
        // products = productList;
        //  debugPrint('products is ${products[0]}');
         return true;
      }
      return true;
    } catch (e) {
      debugPrint('fetch product error is $e');
      return false;
    }
  }

  Future<bool> fetchCategoryProduct() async {
    try {
      // const apiKey = '24baa271311f413799e6f5e9715dbe3620240830161518117601';
      // const apiId = 'IXSP4DF6C4ZY9YF';
      // const organizationId = '7a008f8fcc34491d8b6db583a218dd30';
      final url = Uri.parse(
        'https://fakestoreapi.com/products/category/jewelery',
      );
      final response = await http.get(url);
      // debugPrint('product response is ${response.body}');
      // debugPrint('request status code is ${response.statusCode}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        final json = jsonDecode(response.body);
        // final fetchedProducts = data['items'] as List;
        final productList = 
            List.from(json).map((e) => Product.fromJson(e)).toList();
         debugPrint('products by category is ${productList}');
       
        // products = productList;
        //  debugPrint('products is ${products[0]}');
         return true;
      }
      return true;
    } catch (e) {
      debugPrint('fetch product error is $e');
      return false;
    }
  }
}